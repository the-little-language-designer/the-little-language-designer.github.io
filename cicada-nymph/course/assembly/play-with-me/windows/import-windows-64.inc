finish equ end


;; Macroinstructions for making import section (64-bit)

macro library [name,string]
 { common
    import.data:
   forward
    local _label
    if defined name#.redundant
     if ~ name#.redundant
      dd RVA name#.lookup,0,0,RVA _label,RVA name#.address
     finish if
    finish if
    name#.referred = 1
   common
    dd 0,0,0,0,0
   forward
    if defined name#.redundant
     if ~ name#.redundant
      _label db string,0
             rb RVA $ and 1
     finish if
    finish if }

macro import name,[label,string]
 { common
    rb (- rva $) and 7
    if defined name#.referred
     name#.lookup:
   forward
     if used label
      if string eqtype ''
       local _label
       dq RVA _label
      else
       dq 8000000000000000h + string
      finish if
     finish if
   common
     if $ > name#.lookup
      name#.redundant = 0
      dq 0
     else
      name#.redundant = 1
     finish if
     name#.address:
   forward
     if used label
      if string eqtype ''
       label dq RVA _label
      else
       label dq 8000000000000000h + string
      finish if
     finish if
   common
     if ~ name#.redundant
      dq 0
     finish if
   forward
     if used label & string eqtype ''
     _label dw 0
            db string,0
            rb RVA $ and 1
     finish if
   common
    finish if }
