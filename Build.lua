-- premake5.lua
workspace "FlatEngine"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "FlatEngine-Editor"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus /bigobj" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"


group "Core"
	include "/Build-Core.lua"
group ""