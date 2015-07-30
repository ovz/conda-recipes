param(
     $build_type_suffix = ""
   , $boost_bin_root="C:\local\boost_1_57_0"
   , $ARCH = "64"
   , $SP_DIR = "c:\__temp\src\copy_boost\sp_dir"
   , $LIBRARY_LIB = "c:\__temp\src\copy_boost\lib"
   , $LIBRARY_INC = "c:\__temp\src\copy_boost\include"
)

Set-PSDebug -Strict 
$ErrorActionPreference = "Stop"

###### Get-ScriptDirPath must be duplicated here ######
function Get-ScriptDirPath 
{
  param(
    [Parameter(Position=0)]
    [System.String]
    $JoinPath

  )
  $Invocation = (Get-Variable MyInvocation -Scope 1).Value
  
  $scriptDir = ""
  if ($Invocation.MyCommand.Path)
  {
    $scriptDir = Split-Path $Invocation.MyCommand.Path
  }
  if (! $scriptDir) 
  {
    # Assume current directory otherwise
    $scriptDir = Get-Location
  }
  if ($JoinPath)
  {
    $exec = $(Join-Path ($scriptDir) $JoinPath)
  }
  else
  {
    $exec = $scriptDir
  }
  $exec
}
###### END Get-ScriptDirPath must be duplicated here ######

Copy-Item $(Join-Path $boost_bin_root "boost") $LIBRARY_INC -Force -Recurse -Verbose

$lib_globs = (
"boost_chrono*$build_type_suffix*",
"boost_date_time*$build_type_suffix*",
"boost_filesystem*$build_type_suffix*",
"boost_python*$build_type_suffix*",
"boost_regex*$build_type_suffix*",
"boost_serialization*$build_type_suffix*",
"boost_system*$build_type_suffix*",
"boost_thread*$build_type_suffix*"
)

$src_dir = Join-Path $boost_bin_root "lib$ARCH-msvc-12.0"


function Copy-Globs(
   $glob_suffix
   , $dst_dir
)
{
    foreach ($lib_glob in $lib_globs)
    {
       #Write-Host "Current glob is $lib_glob"
       Copy-Item $(Join-Path $src_dir "$lib_glob$glob_suffix") $dst_dir -Force -Recurse -Verbose
    }
}

if (-not $(Test-Path $SP_DIR))
{
    New-Item -Path $SP_DIR -ItemType Directory
}
Copy-Globs ".dll" $SP_DIR
Copy-Globs ".lib" $LIBRARY_LIB

