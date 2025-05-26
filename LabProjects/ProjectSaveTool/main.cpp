//--------------------------------------------------------------------
// 저장을 cpp형태로 할 수 있을까?
//--------------------------------------------------------------------



#include <iostream>
#include <string>
#include "save.h"



int main()
{
	std::string foldername;
	std::string filename;
	std::string filenumber;

	foldername = "../";
	filename = "LabProject";

	std::cin >> filenumber;

	std::cout << &filenumber << std::endl;
	filenumber.append("/");
	std::cout << &filenumber << std::endl;

	save("../LabProject10/GameFramework.cpp");
}

