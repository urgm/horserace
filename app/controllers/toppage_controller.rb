# coding: utf-8

class ToppageController < ApplicationController
  def index
    @msg = 'トップページ'
  end
  
  def result
    @msg = '結果'
  end
end
