# coding: utf-8

class ToppageController < ApplicationController
  def index
    @msg = 'トップページ'
  end
  
  def result
    @msg = 'レース結果'
  end
  
  def program
    @msg = '出馬表'
  end
  
  #def add
  #  @msg = '予想、買い目入力'
  #end
  
  #def edit
  #  @msg = '予想、買い目編集'
  #end
  
  #削除って必要？要検討。
  #def delete
  # @msg = '予想、買い目削除'
  #end
end
