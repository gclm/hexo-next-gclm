{% if page.comments && theme.gitalk.enable %}
    
    <link href="{{ theme.gitalk.gitalk_css}}" rel="stylesheet">
    <script src="{{ theme.gitalk.gitalk_js }}"></script>
    <script src="{{ theme.gitalk.md5 }}"></script>

    <script type="text/javascript">
        const gitalk = new Gitalk({
          clientID: '{{ theme.gitalk.clientID }}',
          clientSecret: '{{ theme.gitalk.clientSecret }}',
          repo: '{{ theme.gitalk.repo  }}',
          owner: '{{ theme.gitalk.owner }}',
          admin: ['{{ theme.gitalk.admin }}'],
          id: md5(location.pathname),
          distractionFreeMode: '{{ theme.gitalk.distractionFreeMode }}'
        })
        gitalk.render('gitalk-container')
    </script>
{% endif %}