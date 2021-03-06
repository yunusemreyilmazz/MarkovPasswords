#include <QtWidgets/QApplication>
#include <QSplashScreen>
#include < QDateTime > 
#include "../Start.h"


/** @brief Launch UI.
*/
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QPixmap loadingPix("views/startup.jpg");
    QSplashScreen splash(loadingPix);
    splash.show();
    QDateTime time = QDateTime::currentDateTime();
    QDateTime currentTime = QDateTime::currentDateTime();   //Record current time
    while (time.secsTo(currentTime) <= 5)                   //5 is the number of seconds to delay
    {
        currentTime = QDateTime::currentDateTime();
        a.processEvents();
    };


    Start w;
    w.show();
    splash.finish(&w);
    return a.exec();
}
