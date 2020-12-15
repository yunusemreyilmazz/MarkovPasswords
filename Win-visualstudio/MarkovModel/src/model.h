#pragma once
#include <map>
#include <vector>

#include "vertex.h"
#include "node.h"

namespace Markov {
	
	class Model {
	public:
		/* Traverse the model by calling Markov::Node::RandomNext on the start node 
		*  and repeating until terminator node. (will return NULL)
		*/
		void RandomWalk();

		/* Adjust the model with a single string
		*  Traverse string char by char and adjust each vertice with occurrence.
		*  Param is signed so negative bias can be applied.
		*/
		void adjust(char* string, long int occurrence);


	private:
		/* Map left is the Nodes value
		* Map right is the node pointer
		*/
		std::map<unsigned char, Markov::Node*> nodes;

		// A list of all vertices
		// Might drop this in implementation, no use so far
		std::vector<Markov::Vertex> vertices;
	};

};