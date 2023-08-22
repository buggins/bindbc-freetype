/+
+                Copyright 2023 Aya Partridge
+          Copyright 2019 - 2022 Michael D. Parker
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module ft.render;

import bindbc.freetype.config;
import bindbc.freetype.codegen;

import ft;
import ft.glyph;
import ft.image;
import ft.modapi;
import ft.types;

extern(C) nothrow{
	alias FT_Glyph_InitFunc = FT_Error function(FT_Glyph, FT_GlyphSlot);
	alias FT_Glyph_DoneFunc = void function(FT_Glyph);
	alias FT_Glyph_TransformFunc = void function(FT_Glyph, const(FT_Matrix)*, const(FT_Vector)*);
	alias FT_Glyph_GetBBoxFunc = void function(FT_Glyph, FT_BBox*);
	alias FT_Glyph_CopyFunc = FT_Error function(FT_Glyph, FT_Glyph);
	alias FT_Glyph_PrepareFunc = FT_Error function(FT_Glyph, FT_GlyphSlot);
}

struct FT_Glyph_Class{ //typedef aliased in ftglyph.h
	FT_Long glyph_size;
	FT_Glyph_Format glyph_format;
	FT_Glyph_InitFunc glyph_init;
	FT_Glyph_DoneFunc glyph_done;
	FT_Glyph_CopyFunc glyph_copy;
	FT_Glyph_TransformFunc glyph_transform;
	FT_Glyph_GetBBoxFunc glyph_bbox;
	FT_Glyph_PrepareFunc glyph_prepare;
}

extern(C) nothrow{
	alias FT_Renderer_RenderFunc = FT_Error function(FT_Renderer, FT_GlyphSlot, FT_Render_Mode, const(FT_Vector)*);
	alias FT_Renderer_TransformFunc = FT_Error function(FT_Renderer, FT_GlyphSlot, const(FT_Matrix)*, const(FT_Vector)*);
	alias FT_Renderer_GetCBoxFunc = void function(FT_Renderer, FT_GlyphSlot, FT_BBox*);
	alias FT_Renderer_SetModeFunc = FT_Error function(FT_Renderer, FT_ULong, FT_Pointer);
}

struct FT_Renderer_Class{
	FT_Module_Class root;
	FT_Glyph_Format glyph_format;
	FT_Renderer_RenderFunc render_glyph;
	FT_Renderer_TransformFunc transform_glyph;
	FT_Renderer_GetCBoxFunc get_glyph_cbox;
	FT_Renderer_SetModeFunc set_mode;
	static if(ftSupport >= FTSupport.v2_13){
		const(FT_Raster_Funcs)* raster_class;
	}else{
		FT_Raster_Funcs* raster_class;
	}
}

mixin(joinFnBinds((){
	FnBind[] ret = [
		{q{FT_Renderer}, q{FT_Get_Renderer}, q{FT_Library library, FT_Glyph_Format format}},
		{q{FT_Error}, q{FT_Set_Renderer}, q{FT_Library library, FT_Renderer renderer, uint num_params, FT_Parameter* parameters}},
	];
	return ret;
}()));
