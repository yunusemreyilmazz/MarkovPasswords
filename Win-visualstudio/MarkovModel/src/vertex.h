
#include <cstdint>


namespace Markov {

	class Node;

	class Vertex {
	public:
		
		/* 
		*  Vertex::left   => _left
		*  Vertex::right  => _right
		*  Vertex::weight => 0
		*/
		Markov::Vertex(Markov::Node* _left, Markov::Node* _right);
		
		//adjust weight with the offset value
		void adjust(uint64_t offset); 
		
		//return right
		Markov::Node traverse();

	private:
		Markov::Node* left; //source node
		Markov::Node* right;//target node
		uint64_t weight;    //vertex weight
	};


};