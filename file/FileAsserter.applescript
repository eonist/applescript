--property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
(*
 * Asserts if an alias hsf file path is a folder or not
 * Param the_path: "alias hsf" file path
 *)
on is_folder(the_path)
	return FileParser's file_kind(the_path) is equal to "folder"
end is_folder

(*
 * Asserts if a file exits
 * Param: hsf_file_path is a hsf file path
 * Caution if you use alias hsf paths, make sure to cast it as text first
 * Note: For alias hsf you can also do: use "exists file h"
 * Note you can also use the try error clause with: hsf_file_path as alias--then it will be an error if the file doesnt exist
 * Caution: it seems if you try to assert if a folder exist you must pass the file_path as an alias hsf file path
 *)
on does_file_exist(hsf_file_path)
	tell application "Finder"
		return (exists file hsf_file_path)
	end tell
end does_file_exist
test()
(*
 * Asserts if a folder exists
 * Example: does_folder_exist(((path to desktop) & "testing") as text)
 * Note you can also do this in shell: try do shell script "cd " & posix_file_path
 *)
on does_folder_exist(hsf_file_path)
  try
    hsf_file_path as alias
    return true
  on error
    return false
  end try
end test
