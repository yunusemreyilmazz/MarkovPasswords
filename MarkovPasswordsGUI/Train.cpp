#include "src/Train.h"
#include <fstream>
#include <Windows.h>
#include<QFileDialog>
#include<QMessageBox>
#include<QTextStream>
#include<QDir>
#include "src/CLI.h"
#include "../MarkovPasswords/src/markovPasswords.h"

#include <QtWidgets/QApplication>
#include "Generate.h"


std::random_device rd;
std::default_random_engine generator(rd());
std::uniform_int_distribution<long long unsigned> distribution(0, 0xffffFFFF);

Train::Train(QWidget* parent)
    : QMainWindow(parent)
{
    ui.setupUi(this);

   

    QObject::connect(ui.pushButton, &QPushButton::clicked, this, [this] {train(); });
    QObject::connect(ui.pushButton_2, &QPushButton::clicked, this, [this] {home(); });
    QObject::connect(ui.pushButton_3, &QPushButton::clicked, this, [this] {goGenerate(); });
    
    ui.pushButton_3->setVisible(false);

  
}

void Train::train() {

    

    QString file_name = QFileDialog::getOpenFileName(this, "Open a File", QDir::homePath());
    QFile file(file_name);

    if (!file.open(QFile::ReadOnly | QFile::Text)) {
        QMessageBox::warning(this, "Error", "File Not Open!");
    }
    QTextStream in(&file);
    QString text = in.readAll();
    ui.plainTextEdit->setPlainText(text);

   
    char* cstr;
    std::string fname = file_name.toStdString();
    cstr = new char[fname.size() + 1];
    strcpy(cstr, fname.c_str());


   
    char a=',';
    MarkovPasswords mp;
    mp.Import("models/2gram.mdl");
    mp.Train(cstr, a);
    mp.Export("models/finished.mdl");

    ui.label_2->setText("Training DONE!");
    ui.pushButton_3->setVisible(true);

    file.close();
}

void Train::home() {
     CLI* w = new CLI;
     w->show();
     this->close();
}
void Train::goGenerate() {
    Generate* w = new Generate;
    w->show();
    this->close();
}
