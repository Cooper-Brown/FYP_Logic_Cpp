#ifndef GAME_STATE_TABLE_CLASS
#define GAME_STATE_TABLE_CLASS

#include <opencv2/opencv.hpp>

#include "AirHockeyTable.hpp"
#include "Puck.hpp"
#include "StmCommunicator.hpp"

#define STATE_STANDBY 0
#define STATE_DEFEND 1
#define STATE_ATTACK 2
#define STATE_HARD_DEFENCE 3

class GameState {
    public:
        // Internal class Reflection
        class Reflection {
            public:
                std::string reflectedSurface;
                Coordinate mostRecentReflectionPosition;
                Coordinate averagePosition;
                Vector incomingVector;
                Line incomingTrajectory;
                Vector reflectedVector;
                Line reflectedTrajectory;
        };

        // Game Entities
        AirHockeyTable pixelSpaceTable;
        Puck greenPuck;

        // keeps track of the computed reflections
        Reflection firstOrderReflection;
        Reflection secondOrderReflection;

        // Keeps the internal state of the game
        int gameState;
        
        bool resetTrackingAverage;

        bool hardDefendFirstIteration;

        // Needed to communicate with the robot.
        StmCommunicator* stmComms;

        // CONSTRUCTOR
        GameState(cv::Size rescaledSize, StmCommunicator* stmCommsIn);

        // Driving functions
        void registerLostPuck();
        void updatePuckPosition(cv::Vec3f positionalData);
        void updateLogic(cv::Mat imageToDrawOn);
        void switchToDynamic();
        void switchToDefend();
    private:
        // Helper functions
        int translatePixelSpaceToRobotSpace(Coordinate pixelSpaceCoordinate, Coordinate* robotSpaceCoordinate);
        void computeFirstOrderPuckReflection(cv::Mat imageToDrawOn);
        void computeSecondOrderPuckReflection(cv::Mat imageToDrawOn);
        void transitionToAttack();
        
        // State Logic
        void hardDefendProcedure(cv::Mat imageToDrawOn);
        void standbyProcedure(cv::Mat imageToDrawOn);
        void attackProcedure(cv::Mat imageToDrawOn);
        void defendProcedure(cv::Mat imageToDrawOn);
};

#endif
