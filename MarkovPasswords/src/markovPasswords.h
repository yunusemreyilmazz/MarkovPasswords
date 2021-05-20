#pragma once
#include "../../MarkovModel/src/MarkovModel.h"
#include "threadSharedListHandler.h"
/** @brief Markov::Model with char represented nodes.
* 
* Includes wrappers for Markov::Model and additional helper functions to handle file I/O
*/
class MarkovPasswords : public Markov::Model<char>{
public:

	/** @brief Initialize the markov model from MarkovModel::Markov::Model
	*
	*/
	MarkovPasswords();

	/** @brief Initialize the markov model from MarkovModel::Markov::Model, with an import file.
	*
	* This function calls the Markov::Model::Import on the filename to construct the model
	* @param filename - Filename to import
	* @return Pointer to the constructed model.
	*/
	MarkovPasswords(const char* filename);

	/** @brief Open dataset file and return the ifstream pointer
	* @param filename - Filename to open
	* @return ifstream* to the the dataset file
	*/
	std::ifstream* OpenDatasetFile(const char* filename);


	/** @brief Train the model with the dataset file.
	* @param datasetFileName - Ifstream* to the dataset. If null, use class member
	* @param delimiter - a character, same as the delimiter in dataset content
	*/
	void Train(const char* datasetFileName, char delimiter, int threads);

	void TrainThread(ThreadSharedListHandler *listhandler, const char* datasetFileName, char delimiter);

	/** @brief Export model to file.
	* @param filename - Export filename.
	* @return std::ofstream* of the exported file.
	*/
	std::ofstream* Save(const char* filename);

	/** @brief Call Markov::Model::RandomWalk n times, and collect output.
	* 
	* Write the data to this->outputfile
	* 
	* @param n - Number of passwords to generate.
	* @return std::ofstream* of the output file.
	*/
	void Generate(unsigned long int n, const char* wordlistFileName, int minLen=6, int maxLen=12, int threads=20);
	void GenerateThread(std::mutex *outputLock, unsigned long int n, std::ofstream *wordlist, int minLen, int maxLen);

private:
	std::ifstream* datasetFile;
	std::ofstream* modelSavefile;
	std::ofstream* outputFile;
};

