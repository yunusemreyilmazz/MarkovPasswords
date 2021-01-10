#include "node.h"
#include <assert.h>
template <typename storageType>
Markov::Node<storageType>::Node(storageType _value) {
	this->_value = _value;
};

template <typename storageType>
Markov::Node<storageType>::Node() {
	this->_value = 0;
	this->total_edge_weights = 0;
};

template <typename storageType>
unsigned char Markov::Node<storageType>::value() {
	return _value;
}

template <typename storageType>
Markov::Edge<storageType>* Markov::Node<storageType>::Link(Markov::Node<storageType>* n) {
	Markov::Edge *v = new Markov::Edge(this, n);
	this->UpdateEdges(v);
	return v;
}

template <typename storageType>
Markov::Edge<storageType>* Markov::Node<storageType>::Link(Markov::Edge<storageType>* v) {
	v->set_left(this);
	this->UpdateEdges(v);
	return v;
}

template <typename storageType>
Markov::Node<storageType>* Markov::Node<storageType>::RandomNext() {

	//get a random value in range of total_vertice_weight
	int selection = rand() % this->total_edge_weights;
	
	//make absolute, no negative modulus values wanted
	selection = (selection<0)? selection : selection + this->total_edge_weights;

	//iterate over the Edge map
	//Subtract the Edge weight from the selection at each Edge
	//when selection goes below 0, pick that node 
	//(Fast random selection with weight bias)
	for ( std::pair<const unsigned char,Markov::Edge<storageType>*> const& x : this->edges) {
		selection -= x.second->weight();
		if (selection < 0) return x.second->traverse();
	}

	//if this assertion is reached, it means there is an implementation error above
	assert(true && "This should never be reached (node failed to walk to next)");

}

template <typename storageType>
bool Markov::Node<storageType>::UpdateEdges(Markov::Edge<storageType>* v) {
	this->edges.insert({ v->traverse()->value(), v });
	this->total_edge_weights += v->weight();
	return v->traverse();
}

template <typename storageType>
Markov::Edge<storageType>* findVertice(Markov::Node<storageType>* l, Markov::Node<storageType>* r) {/*TODO*/ return NULL; };

 