#pragma once
#include <iostream>
#include "color/term.h"
#include "argparse.h"
#include <string>
#include <cstring>
#include <sstream>
#include "markovPasswords.h"


/** @brief Launch CLI tool.
*/
int main(int argc, char** argv) {

	terminal t;
	/*
	ProgramOptions* p  = Argparse::parse(argc, argv);

	if (p==0 || p->bFailure) {
		std::cout << TERM_FAIL << "Arguments Failed to Parse" << std::endl;
		Argparse::help();
	}*/
	Argparse a(argc,argv);

	MarkovPasswords markovPass;
	std::cout << "Importing model.\n";
	markovPass.Import("models/2gram.mdl");
	std::cout << "Import done. Training...\n";
	markovPass.Train("datasets/graduation.corpus", '\t', 50);
	std::cout << "Training done. Exporting to file.\n";
	markovPass.Export("models/finished2.mdl");

	std::cout << "Generation done....\n";
	return 0;
}

