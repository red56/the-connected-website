require "#{File.dirname(__FILE__)}/../test_helper"

class SubscribeTo_PostTest < ActionController::IntegrationTest

#  should "see not see a subscribe link if you're not logged in" do
#    get "/posts/#{posts(:cool_article).id}"
#    assert_link_does_not_exist "Follow this discussion by email"
#    assert_link_does_not_exist "Stop following?"
#  end
#  
#  should "see the subscribe link when you're logged in" do
#    new_session_as(:alex) do
#      get "/posts/#{posts(:cool_article).id}"
#      assert_link_exists "Follow this discussion by email"
#      assert_link_does_not_exist "Stop following?"
#    end
#  end
#  
#  should "be able to subscribe to a post" do
#    new_session_as(:alex) do
#      post_via_redirect "/posts/#{posts(:cool_article).id}/subscribe"
#      assert_link_does_not_exist "Follow this discussion by email"
#      assert_link_exists "Stop following?"
#    end
#  end
#
#  should "be able to unsubscribe to a post" do
#    new_session_as(:alex) do
#      post_via_redirect "/posts/#{posts(:cool_article).id}/subscribe"
#      post_via_redirect "/posts/#{posts(:cool_article).id}/unsubscribe"
#      assert_link_exists "Follow this discussion by email"
#      assert_link_does_not_exist "Stop following?"
#    end
#  end
#  
#  should "queue up an email when a comment is added to a post." do
#    assert_difference("QueuedEmail.count") do 
#      new_session_as(:alex) do
#        post_via_redirect "/posts/#{posts(:cool_article).id}/comments", :comment => { :body => "YoYo" }
#      end
#    end
#  end
#  
#  should "automatically subscribe to a post when it's created" do
#    new_session_as(:duff) do
#      post_via_redirect "/posts", :post => { :title => "Seasteading is the only way", :detail => "And some wonderful detail" }
#      assert_link_does_not_exist "Follow this discussion by email"
#      assert_link_exists "Stop following?"
#    end
#  end
#  
#  should "automatically subscribe to a post when it's commented on." do
#    new_session_as(:alex) do
#      post_via_redirect "/posts/#{posts(:cool_article).id}/comments", :comment => { :body => "YoYo" }
#      assert_link_does_not_exist "Follow this discussion by email"
#      assert_link_exists "Stop following?"
#    end
#  end
  
end