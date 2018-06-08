-- This file was automatically generated for the LuaDist project.

package = "luacov-coveralls"
version = "0.1.1-1"
-- LuaDist source
source = {
  tag = "0.1.1-1",
  url = "git://github.com/LuaDist-testing/luacov-coveralls.git"
}
-- Original source
-- source = {
--    url = "git://github.com/moteus/luacov-coveralls",
--    tag = "v0.1.1"
-- }
description = {
   summary = "LuaCov reporter for coveralls.io service",
   detailed = [[
   ]],
   homepage = "http://github.com/moteus/luacov-coveralls",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   -- "luajson",
   "lua-cjson",
   "luacov > 0.5",
   "luafilesystem",
   "lua-path",
}
build = {
   type = "builtin",
   copy_directories = {},
   modules = {
      ['luacov.reporter.coveralls'] = "src/luacov/reporter/coveralls.lua",
      ['luacov.coveralls.GitRepo' ] = "src/luacov/coveralls/GitRepo.lua",
      ['luacov.coveralls.CiInfo'  ] = "src/luacov/coveralls/CiInfo.lua",
      ['luacov.coveralls.CiRepo'  ] = "src/luacov/coveralls/CiRepo.lua",
      ['luacov.coveralls.utils'   ] = "src/luacov/coveralls/utils.lua",
   },
   install = {
      bin = {
         ["luacov-coveralls"] = "src/bin/luacov-coveralls",
      }
   },
}