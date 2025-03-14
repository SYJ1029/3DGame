//-----------------------------------------------------------
// save.cpp - 한학기를 잘 저장하는 함수
//													2025.3.13
//-----------------------------------------------------------


#include <string_view>
#include <fstream>
#include <iostream>
#include <filesystem>
#include <chrono>

//------------------------------------
void save(std::string_view filename)
//------------------------------------
{
	std::ifstream filein{ filename.data() }; // RAII -> 자원을 이용해서 실행하기

	if (not filein) //가독성을 위해 not 으로 
	{
		std::cout << filename << "을 열 수 없습니다" << std::endl;
		exit(202503210); // 굳이 return
	}

	// 1.5) 저장했다는 사실을 화면에 표시
	std::cout << filename << "(" << std::filesystem::file_size(filename)
		<< "bytes) save" << std::endl;


	std::ofstream fileout{ "GameFramework.cpp", std::ios::app };



	std::vector<char> v(std::filesystem::file_size(filename));
	// vector는 ()를 사용해 딱 맞는 바이트 확보가 가능하다
	std::copy(std::istreambuf_iterator{ filein }, {}, std::ostreambuf_iterator{ fileout });

}