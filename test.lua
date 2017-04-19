#!/usr/bin/lua

local stache = require "lustache"

local context = {
  boolean1 = true,
  boolean2 = false,
  list = {1, 2, 3,},
  map = {a = 1, b = 2,},
}

local template = [[
{{?boolean1}}
boolean1
{{/boolean1}}
{{?boolean2}}
boolean2
{{/boolean2}}
{{?boolean3}}
boolean3
{{/boolean3}}
{{?list}}
list:
  {{#list}}
  - {{.}}
  {{/list}}
{{/list}}
map:
{{*map}}
  - {{k}} = {{v}}
{{/map}}
{{&list[1]}}
]]

print(stache:render(template, context))
