syn keyword bfTODO TODO FIXME XXX NOTE
syn match bfComment "#.*$" contains=bfTODO 

syn match bfInclude /$include "[a-zA-z0-9_]*"/
syn region bfMacroCall start="$!" end="!" skipwhite

syn match bfMacroDefine /$macrodef [a-zA-z0-9]*:/ nextgroup=bfMacroDefineBody skipwhite
syn match bfMacroEnd '$endmacro' 
syn region bfMacroDefineBody start="$macrodef" end="$endmacro" fold transparent

syn match bfBinOp /[+\-]/ contained display
syn match bfPtrOp /[><]/ contained display
syn match bfStdOp /[.,\&]/ contained display
syn match bfLoop /[\[\]]/ contained display

" DT
syn match bfNum '\d\+b' contained display
syn match bfNum '\d\+n' contained display
syn region bfChar start='\'' end='\'' contained display

" Func
syn match bfFuncName /@[a-zA-z0-9]*/ nextgroup=bfFuncName skipwhite
syn region bfFunc start=/{/ end="}" fold transparent contains=bfLoop, bfStdOp, bfPtrOp, bfBinOp, bfComment, bfFuncCall, bfChar, bfMacroCall, bfNum
syn match bfFuncCall /%[a-zA-z0-9]*/ skipwhite contained display


let b:current_syntax = "bf"
hi def link bfTODO           Todo
hi def link bfKeyword           Todo
hi def link bfComment       Comment

hi def link bfBinOp    		   Operator
hi def link bfPtrOp    		   Conditional
hi def link bfStdOp    		   Macro
hi def link bfLoop    		 	 Repeat
hi def link bfChar    		   Character
hi def link bfNum    		     Number


hi def link bfMacroCall    		   Macro
hi def link bfMacroDefine   		   Macro
hi def link bfMacroEnd   		   Macro
hi def link bfMacroBody   		   Macro

hi def link bfFuncName 			 Function
hi def link bfFuncCall       Identifier

hi def link bfInclude 			 Include
