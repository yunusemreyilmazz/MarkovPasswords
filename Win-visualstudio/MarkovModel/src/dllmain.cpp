// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"
#include "model.h"
#include <iostream>

__declspec(dllexport) void dll_loadtest() {
    std::cout << "External function called.\n";
    //cudaTestEntry();
}

std::random_device rd;
std::default_random_engine generator(rd());
std::uniform_int_distribution<long long unsigned> distribution(0, 0xffffFFFF);

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID lpReserved)
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

