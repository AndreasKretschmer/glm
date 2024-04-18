project "GLM"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

	includedirs { "glm/" }
	files
	{
		"glm/**"
	}

	filter "system:windows"
		systemversion "latest"

		defines 
		{ 
			"_GLM_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"