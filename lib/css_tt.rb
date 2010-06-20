# provides helper method available in views to generate css based tooltips
module  CssTt
  module CssTtHelper
    # Returns a html markup which with help of css makes tooltips for given string
    #
    # Use helper in your views e.g.: 
    #   <%= css_tt("I am text to be explained on hover", "I am the text in tooltip") %>
    # This will generate a classic popup
    #
    # Some options are available for tooltips, like :type, :transition and :title
    # * :type => possible options are :classic, :critical, :help, :warning, :info
    # type defines the look of the tooltip and if other than classic adds an icon.
    # types are quote self explainable
    # * :transition => works only for webkit based browsers (i.e. Chrome, Safari), but
    # is unobtrusive and does nothing on other browsers, because it's css based
    # * :title => tootip title, optional
    #
    # You can use tooltips for whatever inline html element you want and add any 
    # inline elements inside the tooltip.
    #   <%= css_tt(link_to(smth, path), 
    #           "<b>find</b> more #{link_to('here', path)}", 
    #           :type => :info,
    #           :title => "Outside link",
    #           :transition => :left) %>
    
    def css_tt(smth_with_tooltip, tooltip_contents, opts = {})
      defaults = {
        :type => :classic,    # [:classic, :critical, :help, :warning, :info]
        :transition => nil,   # [:left, :top]
        :title => nil         #Information, Warning, Achtung, Atsargiai...
      }
      opts = defaults.merge opts
      opts[:transition] = "css_tt_#{opts[:transition]}" if opts[:transition]
      #css classes
      hoverable_class = ('css_tt_hoverable ' + "#{opts[:transition]}").strip
      tooltip_class = (opts[:type] && opts[:type] != :classic) ? "custom #{opts[:type]}" : 'classic'
      
      #tooltip itself
      tooltip_contents = content_tag(:em, opts[:title])+tooltip_contents if opts[:title]
      tooltip_contents = image_tag("/images/css_tt/#{opts[:type].to_s}.png", :alt => opts[:type].to_s, :width => "48", :height => "48")+tooltip_contents if opts[:type] && opts[:type] != :classic
      tooltip = content_tag(:span, tooltip_contents, :class => tooltip_class)
      
      #result
      return content_tag(:span, smth_with_tooltip + tooltip, :class => hoverable_class)
    end
  end
end
