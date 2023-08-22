/+
+                Copyright 2023 Aya Partridge
+          Copyright 2019 - 2022 Michael D. Parker
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module ft.increm;

import bindbc.freetype.config;
import bindbc.freetype.codegen;

import ft;
import ft.types;

struct FT_IncrementalRec;
alias FT_Incremental = FT_IncrementalRec*;

struct FT_Incremental_MetricsRec{
	FT_Long bearing_x;
	FT_Long bearing_y;
	FT_Long advance;
}

alias FT_Incremental_Metrics = FT_Incremental_MetricsRec*;

extern(C) nothrow{
	alias FT_Incremental_GetGlyphDataFunc = FT_Error function(FT_Incremental, uint, FT_Data*);
	alias FT_Incremental_FreeGlyphDataFunc = void function(FT_Incremental, FT_Data*);
	alias FT_Incremental_GetGlyphMetricsFunc = FT_Error function(FT_Incremental, uint, FT_Bool, FT_Incremental_MetricsRec*);
}

struct FT_Incremental_FuncsRec{
	FT_Incremental_GetGlyphDataFunc get_glyph_data;
	FT_Incremental_FreeGlyphDataFunc free_glyph_data;
	FT_Incremental_GetGlyphMetricsFunc get_glyph_metrics;
}

struct FT_Incremental_InterfaceRec{
	FT_Incremental_FuncsRec* funcs;
	FT_Incremental object;
}

alias FT_Incremental_Interface = FT_Incremental_InterfaceRec*;

mixin(joinFnBinds((){
	FnBind[] ret;
	return ret;
}()));
