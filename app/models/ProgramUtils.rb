require 'nokogiri'
require 'open-uri'

class ProgramUtils
  #FIXME パラメータは仮
  def import(program_type='race_old', race_id = 'c201106050611')
    url = "http://race.netkeiba.com/?pid=#{program_type}&id=#{race_id}"
    doc = Nokogiri.HTML(open(url))
    
    trs = doc.search("//table[@class='race_table_old nk_tb_common']//tr[@class='bml1']")
    
    programs = []
    
    trs.each do |tr|
      tds = tr.xpath("td")
      
      program = Program.new

      program.position_no = tds[0].text  
      program.horse_no = tds[1].text
      program.horse_name = tds[2].search("div//a").text
      # sexAge = tds[3].text
      program.weight = tds[4].text
      program.jockey = tds[5].text
      
      programs << program
    end

    return programs
  end
end
