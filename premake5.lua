project "Freetype"
    kind "StaticLib"
    language "C"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    defines "WIN32"
    defines "FT2_BUILD_LIBRARY"
  
    files
    {
      "%{prj.location}/src/base/ftsystem.c",
      "%{prj.location}/src/base/ftinit.c ",
      "%{prj.location}/src/base/ftdebug.c",
      "%{prj.location}/src/base/ftbase.c ",
      "%{prj.location}/src/base/ftbbox.c  " ,    -- recommended, see <ftbbox.h>
      "%{prj.location}/src/base/ftglyph.c " ,    -- recommended, see <ftglyph.h>
      "%{prj.location}/src/base/ftbdf.c   " ,    -- optional, see <ftbdf.h>
      "%{prj.location}/src/base/ftbitmap.c" ,    -- optional, see <ftbitmap.h>
      "%{prj.location}/src/base/ftcid.c   " ,    -- optional, see <ftcid.h>
      "%{prj.location}/src/base/ftfstype.c" ,    -- optional
      "%{prj.location}/src/base/ftgasp.c  " ,    -- optional, see <ftgasp.h>
      "%{prj.location}/src/base/ftgxval.c " ,    -- optional, see <ftgxval.h>
      "%{prj.location}/src/base/ftmm.c    " ,    -- optional, see <ftmm.h>
      "%{prj.location}/src/base/ftotval.c " ,    -- optional, see <ftotval.h>
      "%{prj.location}/src/base/ftpatent.c" ,    -- optional
      "%{prj.location}/src/base/ftpfr.c   " ,    -- optional, see <ftpfr.h>
      "%{prj.location}/src/base/ftstroke.c" ,    -- optional, see <ftstroke.h>
      "%{prj.location}/src/base/ftsynth.c " ,    -- optional, see <ftsynth.h>
      "%{prj.location}/src/base/fttype1.c " ,    -- optional, see <t1tables.h>
      "%{prj.location}/src/base/ftwinfnt.c" ,    -- optional, see <ftwinfnt.h>

     "%{prj.location}/src/bdf/bdf.c          ",-- BDF font driver
     "%{prj.location}/src/cff/cff.c          ",-- CFF/OpenType font driver
     "%{prj.location}/src/cid/type1cid.c     ",-- Type 1 CID-keyed font driver
     "%{prj.location}/src/pcf/pcf.c          ",-- PCF font driver
     "%{prj.location}/src/pfr/pfr.c          ",-- PFR/TrueDoc font driver
     "%{prj.location}/src/sfnt/sfnt.c        ",-- SFNT files support
     "%{prj.location}/src/truetype/truetype.c",-- TrueType font driver
     "%{prj.location}/src/type1/type1.c      ",-- Type 1 font driver
     "%{prj.location}/src/type42/type42.c    ",-- Type 42 font driver
     "%{prj.location}/src/winfonts/winfnt.c  ",-- Windows FONT / FNT font drive
     "%{prj.location}/src/raster/raster.c    ",-- monochrome rasterizer
     "%{prj.location}/src/sdf/sdf.c          ",-- Signed Distance Field driver
     "%{prj.location}/src/smooth/smooth.c    ",-- anti-aliasing rasterize
    -- auxiliary modules (optional
     "%{prj.location}/src/autofit/autofit.c"  ,-- auto hinting module
     "%{prj.location}/src/cache/ftcache.c"    ,-- cache sub-system (in beta)
     "%{prj.location}/src/gzip/ftgzip.c"      ,-- support for compressed fonts (.gz)
     "%{prj.location}/src/lzw/ftlzw.c"        ,-- support for compressed fonts (.Z)
     "%{prj.location}/src/bzip2/ftbzip2.c"    ,-- support for compressed fonts (.bz2)
     "%{prj.location}/src/gxvalid/gxvalid.c"  ,-- TrueTypeGX/AAT table validation
     "%{prj.location}/src/otvalid/otvalid.c"  ,-- OpenType table validation
     "%{prj.location}/src/psaux/psaux.c"      ,-- PostScript Type 1 parsing
     "%{prj.location}/src/pshinter/pshinter.c",-- PS hinting module
     "%{prj.location}/src/psnames/psnames.c"  ,-- PostScript glyph names support


     "%{prj.locaiton}/src/svg/ftsvg.c",
    }
    includedirs
    {
        "%{prj.locaiton}/include"
    }

    filter "kind:StaticLib"   
    filter "configurations:Debug"
        defines "KY_DEBUG"
        symbols "On"
     
    filter "configurations:Release"
        defines "KY_RELEASE"
        optimize "On"
