project "ProjectName"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   targetdir "%{cfg.buildcfg}"
   staticruntime "off"

   files { 
        "Source/**.h",
        "Source/**.cpp",
    }

   includedirs
   {
      "Source"
   }

   defines
   {
    "_WINDOWS"
   }


    targetdir ("../Build/" .. OutputDir .. "/%{prj.name}")
    objdir ("../Build/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { "WINDOWS" }

   filter "configurations:Debug"
       defines { "_DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "NDEBUG" }
       runtime "Release"
       optimize "On"
       symbols "On"

   filter "configurations:Dist"
       defines { "NDEBUG" }
       runtime "Release"
       optimize "On"
       symbols "Off"
