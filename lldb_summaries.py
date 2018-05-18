
# command script import ~/Downloads/spike-lldb-type-summary/lldb_summaries.py

# https://lldb.llvm.org/varformats.html
# https://opensource.apple.com/source/lldb/lldb-310.2.36/www/varformats.html
# https://lldb.llvm.org/cpp_reference/html/classlldb_1_1SBValue.html

import lldb

def DebugDesc_Summary(valueObject, _):
    address = str(valueObject.GetAddress())
    ci = lldb.debugger.GetCommandInterpreter()
    output = lldb.SBCommandReturnObject()
    ci.HandleCommand("expr -l ObjC -O -- [" + address + " debugDescription]", output)
    debugDesc = output.GetOutput()
    debugDesc = debugDesc.rstrip() if debugDesc else "- no debugDescription -"
    return str(debugDesc)

def DebugDescPlusAddress_Summary(valueObject, dictionary):
    debugDesc = DebugDesc_Summary(valueObject, dictionary)
    address = str(valueObject.GetAddress())
    # return "<" + address + "> " + debugDesc
    return "<" + address + "> " + str(valueObject)
#    return "<" + address + "> " + "ao: " + str(valueObject.AddressOf()) + " aoa: " + str(valueObject.AddressOf().GetAddress()) + " type: " + str(valueObject.GetType())

def __lldb_init_module (debugger, _):
    MODULE_NAME = __name__
    debugger.HandleCommand('type summary add -x MY* --python-function %s.DebugDescPlusAddress_Summary' % MODULE_NAME)
