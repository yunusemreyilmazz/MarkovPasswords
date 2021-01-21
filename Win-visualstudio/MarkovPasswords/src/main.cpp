
#include <iostream>
#include "color/term.h"
#include "argparse.h"
#include "markovPasswords.h"

/** @brief Launch CLI tool.
*/
int main(int argc, char** argv) {

	terminal t;

	
	ProgramOptions* p  = Argparse::parse(argc, argv);

	if (p==0 || p->bFailure) {
		std::cout << TERM_FAIL << "Arguments Failed to Parse" << std::endl;
		Argparse::help();
	}


	MarkovPasswords markovPass;

	markovPass.Import("models/2gram.mdl");
	markovPass.Export("models/2gram-dup.mdl");

	return 0;
}