class ActiveScaffold::Bridges::PaperTrail < ActiveScaffold::DataStructures::Bridge
  def self.install
    require File.join(File.dirname(__FILE__), "paper_trail/paper_trail_bridge")
    require File.join(File.dirname(__FILE__), "paper_trail/actions")
    require File.join(File.dirname(__FILE__), "paper_trail/config")
    require File.join(File.dirname(__FILE__), "paper_trail/helper")
    ActiveScaffold::Config::Core.send :include, ActiveScaffold::Bridges::PaperTrail::PaperTrailBridge
    ActionDispatch::Routing::ACTIVE_SCAFFOLD_CORE_ROUTING[:collection][:deleted] = :get
  end
end
