project "Freetype"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
	staticruntime "off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
  
    files
    {
     "%{prj.locaiton}/src/**.cpp",
     "%{prj.locaiton}/src/**.h",
    }


    filter "kind:StaticLib"   
    filter "configurations:Debug"
        defines "KY_DEBUG"
        symbols "On"
     
    filter "configurations:Release"
        defines "KY_RELEASE"
        optimize "On"
