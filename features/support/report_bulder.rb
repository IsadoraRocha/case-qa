require 'report_builder'
require 'date'
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'report/report.json'
    config.report_path = 'report/REPORT'
    config.report_types = [:html]
    config.report_title = "<img src=\'http://www.portaldapropaganda.com.br/noticias/wp-content/uploads/2019/06/novologo1.jpg' width='125' height='40'>"
    config.voice_commands = true
    config.color = 'grey'
    config.additional_info = {DateTime: DateTime.now, Serviço: 'Case-qa Isadora'}
  end
  ReportBuilder.build_report
end