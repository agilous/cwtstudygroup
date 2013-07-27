class TabsController < ApplicationController
  def show2
    @tabs_1 = [ { label: "Inventory", url: "#Inventory" },
                { label: "Order Information", url: "#Order Information" },
                { label: "Accounts", url: "#Accounts" },
                { label: "Shippers", url: "#Shippers" },
                { label: "Suppliers", url: "#Suppliers" } ]

    @tabs_2 = [ { label: "Gaslight", url: "http://gaslight.co" },
                { label: "Neo", url: "http://www.neo.com/" },
                { label: "ThoughtWorks", url: "http://www.thoughtworks.com/" },
                { label: "Hashrocket", url: "http://hashrocket.com/" } ]
  end
end