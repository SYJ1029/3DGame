//-----------------------------------------------------------
// save.cpp - ���б⸦ �� �����ϴ� �Լ�
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
	std::ifstream filein{ filename.data() }; // RAII -> �ڿ��� �̿��ؼ� �����ϱ�

	if (not filein) //�������� ���� not ���� 
	{
		std::cout << filename << "�� �� �� �����ϴ�" << std::endl;
		exit(202503210); // ���� return
	}

	// 1.5) �����ߴٴ� ����� ȭ�鿡 ǥ��
	std::cout << filename << "(" << std::filesystem::file_size(filename)
		<< "bytes) save" << std::endl;


	std::ofstream fileout{ "GameFramework.cpp", std::ios::app };



	std::vector<char> v(std::filesystem::file_size(filename));
	// vector�� ()�� ����� �� �´� ����Ʈ Ȯ���� �����ϴ�
	std::copy(std::istreambuf_iterator{ filein }, {}, std::ostreambuf_iterator{ fileout });

}