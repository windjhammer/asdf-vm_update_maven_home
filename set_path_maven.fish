function asdf_update_maven_home --on-event fish_prompt
  set --local mvn_path (asdf which mvn)
  if test -n "$mvn_path"
    set --local mvn_path (builtin realpath "$mvn_path")
    
    set -gx MV_HOME (dirname (dirname "$mvn_path"))
    set -gx M2_HOME "$MV_HOME"
  end
end
