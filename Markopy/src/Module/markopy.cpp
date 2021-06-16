#pragma once
#include "../../../MarkovPasswords/src/markovPasswords.h"

#define BOOST_PYTHON_STATIC_LIB
#include <Python.h>
#include <boost/python.hpp>
#include <MarkovPasswords/src/modelMatrix.h>

using namespace boost::python;

namespace Markov::Markopy{
    BOOST_PYTHON_MODULE(markopy)
    {
        bool (Markov::API::MarkovPasswords::*Import)(const char*) = &Markov::Model<char>::Import;
        bool (Markov::API::MarkovPasswords::*Export)(const char*) = &Markov::Model<char>::Export;
        class_<Markov::API::MarkovPasswords>("MarkovPasswords", init<>())
            .def(init<>())
            .def("Train", &Markov::API::MarkovPasswords::Train)
            .def("Generate", &Markov::API::MarkovPasswords::Generate)
            .def("Import", Import, "Import a model file.")
            .def("Export", Export, "Export a model to file.")
        ;
        bool (Markov::API::ModelMatrix:: * Import1)(const char*) = &Markov::Model<char>::Import;
        bool (Markov::API::ModelMatrix:: * Export1)(const char*) = &Markov::Model<char>::Export;
        class_<Markov::API::ModelMatrix>("ModelMatrix", init<>())
            
            .def(init<>())
            .def("Train", &Markov::API::ModelMatrix::Train)
            .def("Import", Import1, "Import a model file.")
            .def("Export", Export1, "Export a model to file.")
            .def("ConstructMatrix",&Markov::API::ModelMatrix::ConstructMatrix)
            .def("DumpJSON",&Markov::API::ModelMatrix::DumpJSON)
            .def("FastRandomWalk",&Markov::API::ModelMatrix::FastRandomWalk)
            ;
    };
};


