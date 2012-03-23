# -*- coding: utf-8 -*-
require "sinatra"
require "haml"

configure :production do
end

get "/" do
  haml :index
end

post "/greeting" do
  @message = "はい、こんにちは。"
  @message = "\"hello world\"って言ってよ(´・ω・｀)" unless params[:str] == "hello world"
  haml :greeting
end
