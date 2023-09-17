#ifndef STM_COMMUNICATOR_CLASS
#define STM_COMMUNICATOR_CLASS

#include <CppLinuxSerial/SerialPort.hpp>
using namespace mn::CppLinuxSerial;

#include "Coordinate.hpp"

class StmCommunicator {
    public:
        bool connectionEstablished;
        SerialPort serialPort;
        StmCommunicator();
        bool connect();
        void disconnect();
        bool enableBoard();
        void setCoordinate(Coordinate p1);
};

#endif