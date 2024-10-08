#include <iostream>
#include <gtest/gtest.h>
extern "C" {
#include "../source/temp.h"
}

using namespace std;

class test_class {

    public:
    test_class() {}
    ~test_class() {}

};

struct test_fixture : public testing::Test {
    test_class *test_object;
    void SetUp();
    void TearDown();
};


//*****************************************************************************
// Function: test_fixture::SetUp
//
// Description: Create the test_object.
//
// Parameters: 
//
// Return: 
//
//*****************************************************************************
void test_fixture::SetUp()
{
    test_object = new test_class;

}


//*****************************************************************************
// Function: test_fixture::TearDown
//
// Description: Delete the test_object.
//
// Parameters: 
//
// Return: 
//
//*****************************************************************************
void test_fixture::TearDown()
{
    delete test_object;
}


//*****************************************************************************
// Function: main
//
// Description: 
//
// Parameters: 
//
// Return: 
//
//*****************************************************************************
int main(int argc, char **argv)
{
    testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();

}
