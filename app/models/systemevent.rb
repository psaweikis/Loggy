require 'rsyslog/create_alias.rb'
class Systemevent < ActiveRecord::Base
  include Rsyslog::CreateAlias
  set_table_name "SystemEvents"
  
  create_alias :ID, :id
  create_alias :CustomerID, :customerid
  create_alias :ReceivedAt, :receivedat
  create_alias :DeviceReportedTime, :devicereportedtime
  create_alias :Facility, :facility
  create_alias :Priority, :priority
  create_alias :FromHost, :fromhost
  create_alias :Message, :message
  create_alias :NTSeverity, :ntseverity
  create_alias :Importance, :importance
  create_alias :EventSource, :eventsource
  create_alias :EventUser, :eventuser
  create_alias :EventCategory, :eventcategory
  create_alias :EventID, :eventid
  create_alias :EventBinaryData, :eventbinarydata
  create_alias :MaxAvailable, :maxavailable
  create_alias :CurrUsage, :currusage
  create_alias :MinUsage, :minusage
  create_alias :MaxUsage, :maxusage
  create_alias :InfoUnitID, :infounitid
  create_alias :SysLogTag, :syslogtag
  create_alias :EventLogType, :eventlogtype
  create_alias :GenericFileName, :genericfilename
  create_alias :SystemID, :systemid
  
  def self.search(search)  
    if search  
      where('message LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end
end
# == Schema Information
#
# Table name: SystemEvents
#
#  ID                 :integer(4)      not null, primary key
#  CustomerID         :integer(8)
#  ReceivedAt         :datetime
#  DeviceReportedTime :datetime
#  Facility           :integer(2)
#  Priority           :integer(2)
#  FromHost           :string(60)
#  Message            :text
#  NTSeverity         :integer(4)
#  Importance         :integer(4)
#  EventSource        :string(60)
#  EventUser          :string(60)
#  EventCategory      :integer(4)
#  EventID            :integer(4)
#  EventBinaryData    :text
#  MaxAvailable       :integer(4)
#  CurrUsage          :integer(4)
#  MinUsage           :integer(4)
#  MaxUsage           :integer(4)
#  InfoUnitID         :integer(4)
#  SysLogTag          :string(60)
#  EventLogType       :string(60)
#  GenericFileName    :string(60)
#  SystemID           :integer(4)
#

