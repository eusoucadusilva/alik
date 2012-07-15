module LayoutHelper
  def favicon
    "<link rel=\"shortcut icon\" href=\"/favicon.png\" />".html_safe
  end

  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def analytics(site_id)
    html = <<-ANALYTICS
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '#{site_id}']);
        _gaq.push(['_trackPageview']);
        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    ANALYTICS

    html.html_safe
  end

end
