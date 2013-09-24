


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>highfrequency/R/highfrequencyGSOC.R at master · jonathancornelissen/highfrequency · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe122-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (2012-05-25, TCS patched 2012-05-27, GitHub v1.0.36) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="4E166160:682B:10D17C1:5241805C" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="ybm8kGOPneZiMmAw1ZYxjQySvyZmn8CZN6HGTIyowDw=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-e503554bd5ad06674d1b10d72e423102f78ab1d2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-2357359f6823a4e414d202ebd002ff1d34492325.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-8db79d6d3d61c3bdec72ede901c2b6dbd4a79dad.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-c6ea436c6358b0518da3cb5c492124ea04237ad2.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="df85b9c2dad3983d1e25edab2835ede3">

        <link data-pjax-transient rel='permalink' href='/jonathancornelissen/highfrequency/blob/3b3f88ccde3e84c746f5acc924ac366297bf2ba9/R/highfrequencyGSOC.R'>
  <meta property="og:title" content="highfrequency"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/jonathancornelissen/highfrequency"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="The highfrequency package contains an extensive toolkit for the use of highfrequency financial data in R. It contains functionality to manage, clean and match highfrequency trades and quotes data. Furthermore, it enables users to: calculate easily various liquidity measures, estimate and forecast volatility, and investigate microstructure noise and intraday periodicity."/>

  <meta name="description" content="The highfrequency package contains an extensive toolkit for the use of highfrequency financial data in R. It contains functionality to manage, clean and match highfrequency trades and quotes data. Furthermore, it enables users to: calculate easily various liquidity measures, estimate and forecast volatility, and investigate microstructure noise and intraday periodicity." />

  <meta content="1909644" name="octolytics-dimension-user_id" /><meta content="jonathancornelissen" name="octolytics-dimension-user_login" /><meta content="7306202" name="octolytics-dimension-repository_id" /><meta content="jonathancornelissen/highfrequency" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="7306202" name="octolytics-dimension-repository_network_root_id" /><meta content="jonathancornelissen/highfrequency" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/jonathancornelissen/highfrequency/commits/master.atom" rel="alternate" title="Recent Commits to highfrequency:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production windows vis-public page-blob">
    <div class="wrapper">
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/signup">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fjonathancornelissen%2Fhighfrequency%2Fblob%2Fmaster%2FR%2FhighfrequencyGSOC.R">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey=" s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="jonathancornelissen/highfrequency"
      data-branch="master"
      data-sha="752903926e365dd8e31b17c10589e5ca0e29e49f"
  >

    <input type="hidden" name="nwo" value="jonathancornelissen/highfrequency" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
  <a href="/login?return_to=%2Fjonathancornelissen%2Fhighfrequency"
  class="minibutton with-count js-toggler-target star-button entice tooltipped upwards"
  title="You must be signed in to use this feature" rel="nofollow">
  <span class="octicon octicon-star"></span>Star
</a>
<a class="social-count js-social-count" href="/jonathancornelissen/highfrequency/stargazers">
  2
</a>

  </li>

    <li>
      <a href="/login?return_to=%2Fjonathancornelissen%2Fhighfrequency"
        class="minibutton with-count js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/jonathancornelissen/highfrequency/network" class="social-count">
        0
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/jonathancornelissen" class="url fn" itemprop="url" rel="author"><span itemprop="title">jonathancornelissen</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/jonathancornelissen/highfrequency" class="js-current-repository js-repo-home-link">highfrequency</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/jonathancornelissen/highfrequency" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /jonathancornelissen/highfrequency">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/jonathancornelissen/highfrequency/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /jonathancornelissen/highfrequency/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/jonathancornelissen/highfrequency/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /jonathancornelissen/highfrequency/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/jonathancornelissen/highfrequency/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /jonathancornelissen/highfrequency/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/jonathancornelissen/highfrequency/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /jonathancornelissen/highfrequency/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/jonathancornelissen/highfrequency/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /jonathancornelissen/highfrequency/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/jonathancornelissen/highfrequency/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /jonathancornelissen/highfrequency/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/jonathancornelissen/highfrequency.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jonathancornelissen/highfrequency.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/jonathancornelissen/highfrequency" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jonathancornelissen/highfrequency" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/jonathancornelissen/highfrequency/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:22bf35df763a47871ce9ada7541e65ce -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:22bf35df763a47871ce9ada7541e65ce -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/jonathancornelissen/highfrequency/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/jonathancornelissen/highfrequency/blob/master/R/highfrequencyGSOC.R" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">highfrequency</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency/tree/master/R" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">R</span></a></span><span class="separator"> / </span><strong class="final-path">highfrequencyGSOC.R</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="R/highfrequencyGSOC.R" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/jonathancornelissen/highfrequency/contributors/master/R/highfrequencyGSOC.R">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>1484 lines (1179 sloc)</span>
        <span>39.408 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be signed in to make or propose changes">Edit</a>
          <a href="/jonathancornelissen/highfrequency/raw/master/R/highfrequencyGSOC.R" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jonathancornelissen/highfrequency/blame/master/R/highfrequencyGSOC.R" class="button minibutton ">Blame</a>
          <a href="/jonathancornelissen/highfrequency/commits/master/R/highfrequencyGSOC.R" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon js-entice" href=""
               data-entice="You must be signed in and on a branch to make or propose changes">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-r js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
<span id="L643" rel="#L643">643</span>
<span id="L644" rel="#L644">644</span>
<span id="L645" rel="#L645">645</span>
<span id="L646" rel="#L646">646</span>
<span id="L647" rel="#L647">647</span>
<span id="L648" rel="#L648">648</span>
<span id="L649" rel="#L649">649</span>
<span id="L650" rel="#L650">650</span>
<span id="L651" rel="#L651">651</span>
<span id="L652" rel="#L652">652</span>
<span id="L653" rel="#L653">653</span>
<span id="L654" rel="#L654">654</span>
<span id="L655" rel="#L655">655</span>
<span id="L656" rel="#L656">656</span>
<span id="L657" rel="#L657">657</span>
<span id="L658" rel="#L658">658</span>
<span id="L659" rel="#L659">659</span>
<span id="L660" rel="#L660">660</span>
<span id="L661" rel="#L661">661</span>
<span id="L662" rel="#L662">662</span>
<span id="L663" rel="#L663">663</span>
<span id="L664" rel="#L664">664</span>
<span id="L665" rel="#L665">665</span>
<span id="L666" rel="#L666">666</span>
<span id="L667" rel="#L667">667</span>
<span id="L668" rel="#L668">668</span>
<span id="L669" rel="#L669">669</span>
<span id="L670" rel="#L670">670</span>
<span id="L671" rel="#L671">671</span>
<span id="L672" rel="#L672">672</span>
<span id="L673" rel="#L673">673</span>
<span id="L674" rel="#L674">674</span>
<span id="L675" rel="#L675">675</span>
<span id="L676" rel="#L676">676</span>
<span id="L677" rel="#L677">677</span>
<span id="L678" rel="#L678">678</span>
<span id="L679" rel="#L679">679</span>
<span id="L680" rel="#L680">680</span>
<span id="L681" rel="#L681">681</span>
<span id="L682" rel="#L682">682</span>
<span id="L683" rel="#L683">683</span>
<span id="L684" rel="#L684">684</span>
<span id="L685" rel="#L685">685</span>
<span id="L686" rel="#L686">686</span>
<span id="L687" rel="#L687">687</span>
<span id="L688" rel="#L688">688</span>
<span id="L689" rel="#L689">689</span>
<span id="L690" rel="#L690">690</span>
<span id="L691" rel="#L691">691</span>
<span id="L692" rel="#L692">692</span>
<span id="L693" rel="#L693">693</span>
<span id="L694" rel="#L694">694</span>
<span id="L695" rel="#L695">695</span>
<span id="L696" rel="#L696">696</span>
<span id="L697" rel="#L697">697</span>
<span id="L698" rel="#L698">698</span>
<span id="L699" rel="#L699">699</span>
<span id="L700" rel="#L700">700</span>
<span id="L701" rel="#L701">701</span>
<span id="L702" rel="#L702">702</span>
<span id="L703" rel="#L703">703</span>
<span id="L704" rel="#L704">704</span>
<span id="L705" rel="#L705">705</span>
<span id="L706" rel="#L706">706</span>
<span id="L707" rel="#L707">707</span>
<span id="L708" rel="#L708">708</span>
<span id="L709" rel="#L709">709</span>
<span id="L710" rel="#L710">710</span>
<span id="L711" rel="#L711">711</span>
<span id="L712" rel="#L712">712</span>
<span id="L713" rel="#L713">713</span>
<span id="L714" rel="#L714">714</span>
<span id="L715" rel="#L715">715</span>
<span id="L716" rel="#L716">716</span>
<span id="L717" rel="#L717">717</span>
<span id="L718" rel="#L718">718</span>
<span id="L719" rel="#L719">719</span>
<span id="L720" rel="#L720">720</span>
<span id="L721" rel="#L721">721</span>
<span id="L722" rel="#L722">722</span>
<span id="L723" rel="#L723">723</span>
<span id="L724" rel="#L724">724</span>
<span id="L725" rel="#L725">725</span>
<span id="L726" rel="#L726">726</span>
<span id="L727" rel="#L727">727</span>
<span id="L728" rel="#L728">728</span>
<span id="L729" rel="#L729">729</span>
<span id="L730" rel="#L730">730</span>
<span id="L731" rel="#L731">731</span>
<span id="L732" rel="#L732">732</span>
<span id="L733" rel="#L733">733</span>
<span id="L734" rel="#L734">734</span>
<span id="L735" rel="#L735">735</span>
<span id="L736" rel="#L736">736</span>
<span id="L737" rel="#L737">737</span>
<span id="L738" rel="#L738">738</span>
<span id="L739" rel="#L739">739</span>
<span id="L740" rel="#L740">740</span>
<span id="L741" rel="#L741">741</span>
<span id="L742" rel="#L742">742</span>
<span id="L743" rel="#L743">743</span>
<span id="L744" rel="#L744">744</span>
<span id="L745" rel="#L745">745</span>
<span id="L746" rel="#L746">746</span>
<span id="L747" rel="#L747">747</span>
<span id="L748" rel="#L748">748</span>
<span id="L749" rel="#L749">749</span>
<span id="L750" rel="#L750">750</span>
<span id="L751" rel="#L751">751</span>
<span id="L752" rel="#L752">752</span>
<span id="L753" rel="#L753">753</span>
<span id="L754" rel="#L754">754</span>
<span id="L755" rel="#L755">755</span>
<span id="L756" rel="#L756">756</span>
<span id="L757" rel="#L757">757</span>
<span id="L758" rel="#L758">758</span>
<span id="L759" rel="#L759">759</span>
<span id="L760" rel="#L760">760</span>
<span id="L761" rel="#L761">761</span>
<span id="L762" rel="#L762">762</span>
<span id="L763" rel="#L763">763</span>
<span id="L764" rel="#L764">764</span>
<span id="L765" rel="#L765">765</span>
<span id="L766" rel="#L766">766</span>
<span id="L767" rel="#L767">767</span>
<span id="L768" rel="#L768">768</span>
<span id="L769" rel="#L769">769</span>
<span id="L770" rel="#L770">770</span>
<span id="L771" rel="#L771">771</span>
<span id="L772" rel="#L772">772</span>
<span id="L773" rel="#L773">773</span>
<span id="L774" rel="#L774">774</span>
<span id="L775" rel="#L775">775</span>
<span id="L776" rel="#L776">776</span>
<span id="L777" rel="#L777">777</span>
<span id="L778" rel="#L778">778</span>
<span id="L779" rel="#L779">779</span>
<span id="L780" rel="#L780">780</span>
<span id="L781" rel="#L781">781</span>
<span id="L782" rel="#L782">782</span>
<span id="L783" rel="#L783">783</span>
<span id="L784" rel="#L784">784</span>
<span id="L785" rel="#L785">785</span>
<span id="L786" rel="#L786">786</span>
<span id="L787" rel="#L787">787</span>
<span id="L788" rel="#L788">788</span>
<span id="L789" rel="#L789">789</span>
<span id="L790" rel="#L790">790</span>
<span id="L791" rel="#L791">791</span>
<span id="L792" rel="#L792">792</span>
<span id="L793" rel="#L793">793</span>
<span id="L794" rel="#L794">794</span>
<span id="L795" rel="#L795">795</span>
<span id="L796" rel="#L796">796</span>
<span id="L797" rel="#L797">797</span>
<span id="L798" rel="#L798">798</span>
<span id="L799" rel="#L799">799</span>
<span id="L800" rel="#L800">800</span>
<span id="L801" rel="#L801">801</span>
<span id="L802" rel="#L802">802</span>
<span id="L803" rel="#L803">803</span>
<span id="L804" rel="#L804">804</span>
<span id="L805" rel="#L805">805</span>
<span id="L806" rel="#L806">806</span>
<span id="L807" rel="#L807">807</span>
<span id="L808" rel="#L808">808</span>
<span id="L809" rel="#L809">809</span>
<span id="L810" rel="#L810">810</span>
<span id="L811" rel="#L811">811</span>
<span id="L812" rel="#L812">812</span>
<span id="L813" rel="#L813">813</span>
<span id="L814" rel="#L814">814</span>
<span id="L815" rel="#L815">815</span>
<span id="L816" rel="#L816">816</span>
<span id="L817" rel="#L817">817</span>
<span id="L818" rel="#L818">818</span>
<span id="L819" rel="#L819">819</span>
<span id="L820" rel="#L820">820</span>
<span id="L821" rel="#L821">821</span>
<span id="L822" rel="#L822">822</span>
<span id="L823" rel="#L823">823</span>
<span id="L824" rel="#L824">824</span>
<span id="L825" rel="#L825">825</span>
<span id="L826" rel="#L826">826</span>
<span id="L827" rel="#L827">827</span>
<span id="L828" rel="#L828">828</span>
<span id="L829" rel="#L829">829</span>
<span id="L830" rel="#L830">830</span>
<span id="L831" rel="#L831">831</span>
<span id="L832" rel="#L832">832</span>
<span id="L833" rel="#L833">833</span>
<span id="L834" rel="#L834">834</span>
<span id="L835" rel="#L835">835</span>
<span id="L836" rel="#L836">836</span>
<span id="L837" rel="#L837">837</span>
<span id="L838" rel="#L838">838</span>
<span id="L839" rel="#L839">839</span>
<span id="L840" rel="#L840">840</span>
<span id="L841" rel="#L841">841</span>
<span id="L842" rel="#L842">842</span>
<span id="L843" rel="#L843">843</span>
<span id="L844" rel="#L844">844</span>
<span id="L845" rel="#L845">845</span>
<span id="L846" rel="#L846">846</span>
<span id="L847" rel="#L847">847</span>
<span id="L848" rel="#L848">848</span>
<span id="L849" rel="#L849">849</span>
<span id="L850" rel="#L850">850</span>
<span id="L851" rel="#L851">851</span>
<span id="L852" rel="#L852">852</span>
<span id="L853" rel="#L853">853</span>
<span id="L854" rel="#L854">854</span>
<span id="L855" rel="#L855">855</span>
<span id="L856" rel="#L856">856</span>
<span id="L857" rel="#L857">857</span>
<span id="L858" rel="#L858">858</span>
<span id="L859" rel="#L859">859</span>
<span id="L860" rel="#L860">860</span>
<span id="L861" rel="#L861">861</span>
<span id="L862" rel="#L862">862</span>
<span id="L863" rel="#L863">863</span>
<span id="L864" rel="#L864">864</span>
<span id="L865" rel="#L865">865</span>
<span id="L866" rel="#L866">866</span>
<span id="L867" rel="#L867">867</span>
<span id="L868" rel="#L868">868</span>
<span id="L869" rel="#L869">869</span>
<span id="L870" rel="#L870">870</span>
<span id="L871" rel="#L871">871</span>
<span id="L872" rel="#L872">872</span>
<span id="L873" rel="#L873">873</span>
<span id="L874" rel="#L874">874</span>
<span id="L875" rel="#L875">875</span>
<span id="L876" rel="#L876">876</span>
<span id="L877" rel="#L877">877</span>
<span id="L878" rel="#L878">878</span>
<span id="L879" rel="#L879">879</span>
<span id="L880" rel="#L880">880</span>
<span id="L881" rel="#L881">881</span>
<span id="L882" rel="#L882">882</span>
<span id="L883" rel="#L883">883</span>
<span id="L884" rel="#L884">884</span>
<span id="L885" rel="#L885">885</span>
<span id="L886" rel="#L886">886</span>
<span id="L887" rel="#L887">887</span>
<span id="L888" rel="#L888">888</span>
<span id="L889" rel="#L889">889</span>
<span id="L890" rel="#L890">890</span>
<span id="L891" rel="#L891">891</span>
<span id="L892" rel="#L892">892</span>
<span id="L893" rel="#L893">893</span>
<span id="L894" rel="#L894">894</span>
<span id="L895" rel="#L895">895</span>
<span id="L896" rel="#L896">896</span>
<span id="L897" rel="#L897">897</span>
<span id="L898" rel="#L898">898</span>
<span id="L899" rel="#L899">899</span>
<span id="L900" rel="#L900">900</span>
<span id="L901" rel="#L901">901</span>
<span id="L902" rel="#L902">902</span>
<span id="L903" rel="#L903">903</span>
<span id="L904" rel="#L904">904</span>
<span id="L905" rel="#L905">905</span>
<span id="L906" rel="#L906">906</span>
<span id="L907" rel="#L907">907</span>
<span id="L908" rel="#L908">908</span>
<span id="L909" rel="#L909">909</span>
<span id="L910" rel="#L910">910</span>
<span id="L911" rel="#L911">911</span>
<span id="L912" rel="#L912">912</span>
<span id="L913" rel="#L913">913</span>
<span id="L914" rel="#L914">914</span>
<span id="L915" rel="#L915">915</span>
<span id="L916" rel="#L916">916</span>
<span id="L917" rel="#L917">917</span>
<span id="L918" rel="#L918">918</span>
<span id="L919" rel="#L919">919</span>
<span id="L920" rel="#L920">920</span>
<span id="L921" rel="#L921">921</span>
<span id="L922" rel="#L922">922</span>
<span id="L923" rel="#L923">923</span>
<span id="L924" rel="#L924">924</span>
<span id="L925" rel="#L925">925</span>
<span id="L926" rel="#L926">926</span>
<span id="L927" rel="#L927">927</span>
<span id="L928" rel="#L928">928</span>
<span id="L929" rel="#L929">929</span>
<span id="L930" rel="#L930">930</span>
<span id="L931" rel="#L931">931</span>
<span id="L932" rel="#L932">932</span>
<span id="L933" rel="#L933">933</span>
<span id="L934" rel="#L934">934</span>
<span id="L935" rel="#L935">935</span>
<span id="L936" rel="#L936">936</span>
<span id="L937" rel="#L937">937</span>
<span id="L938" rel="#L938">938</span>
<span id="L939" rel="#L939">939</span>
<span id="L940" rel="#L940">940</span>
<span id="L941" rel="#L941">941</span>
<span id="L942" rel="#L942">942</span>
<span id="L943" rel="#L943">943</span>
<span id="L944" rel="#L944">944</span>
<span id="L945" rel="#L945">945</span>
<span id="L946" rel="#L946">946</span>
<span id="L947" rel="#L947">947</span>
<span id="L948" rel="#L948">948</span>
<span id="L949" rel="#L949">949</span>
<span id="L950" rel="#L950">950</span>
<span id="L951" rel="#L951">951</span>
<span id="L952" rel="#L952">952</span>
<span id="L953" rel="#L953">953</span>
<span id="L954" rel="#L954">954</span>
<span id="L955" rel="#L955">955</span>
<span id="L956" rel="#L956">956</span>
<span id="L957" rel="#L957">957</span>
<span id="L958" rel="#L958">958</span>
<span id="L959" rel="#L959">959</span>
<span id="L960" rel="#L960">960</span>
<span id="L961" rel="#L961">961</span>
<span id="L962" rel="#L962">962</span>
<span id="L963" rel="#L963">963</span>
<span id="L964" rel="#L964">964</span>
<span id="L965" rel="#L965">965</span>
<span id="L966" rel="#L966">966</span>
<span id="L967" rel="#L967">967</span>
<span id="L968" rel="#L968">968</span>
<span id="L969" rel="#L969">969</span>
<span id="L970" rel="#L970">970</span>
<span id="L971" rel="#L971">971</span>
<span id="L972" rel="#L972">972</span>
<span id="L973" rel="#L973">973</span>
<span id="L974" rel="#L974">974</span>
<span id="L975" rel="#L975">975</span>
<span id="L976" rel="#L976">976</span>
<span id="L977" rel="#L977">977</span>
<span id="L978" rel="#L978">978</span>
<span id="L979" rel="#L979">979</span>
<span id="L980" rel="#L980">980</span>
<span id="L981" rel="#L981">981</span>
<span id="L982" rel="#L982">982</span>
<span id="L983" rel="#L983">983</span>
<span id="L984" rel="#L984">984</span>
<span id="L985" rel="#L985">985</span>
<span id="L986" rel="#L986">986</span>
<span id="L987" rel="#L987">987</span>
<span id="L988" rel="#L988">988</span>
<span id="L989" rel="#L989">989</span>
<span id="L990" rel="#L990">990</span>
<span id="L991" rel="#L991">991</span>
<span id="L992" rel="#L992">992</span>
<span id="L993" rel="#L993">993</span>
<span id="L994" rel="#L994">994</span>
<span id="L995" rel="#L995">995</span>
<span id="L996" rel="#L996">996</span>
<span id="L997" rel="#L997">997</span>
<span id="L998" rel="#L998">998</span>
<span id="L999" rel="#L999">999</span>
<span id="L1000" rel="#L1000">1000</span>
<span id="L1001" rel="#L1001">1001</span>
<span id="L1002" rel="#L1002">1002</span>
<span id="L1003" rel="#L1003">1003</span>
<span id="L1004" rel="#L1004">1004</span>
<span id="L1005" rel="#L1005">1005</span>
<span id="L1006" rel="#L1006">1006</span>
<span id="L1007" rel="#L1007">1007</span>
<span id="L1008" rel="#L1008">1008</span>
<span id="L1009" rel="#L1009">1009</span>
<span id="L1010" rel="#L1010">1010</span>
<span id="L1011" rel="#L1011">1011</span>
<span id="L1012" rel="#L1012">1012</span>
<span id="L1013" rel="#L1013">1013</span>
<span id="L1014" rel="#L1014">1014</span>
<span id="L1015" rel="#L1015">1015</span>
<span id="L1016" rel="#L1016">1016</span>
<span id="L1017" rel="#L1017">1017</span>
<span id="L1018" rel="#L1018">1018</span>
<span id="L1019" rel="#L1019">1019</span>
<span id="L1020" rel="#L1020">1020</span>
<span id="L1021" rel="#L1021">1021</span>
<span id="L1022" rel="#L1022">1022</span>
<span id="L1023" rel="#L1023">1023</span>
<span id="L1024" rel="#L1024">1024</span>
<span id="L1025" rel="#L1025">1025</span>
<span id="L1026" rel="#L1026">1026</span>
<span id="L1027" rel="#L1027">1027</span>
<span id="L1028" rel="#L1028">1028</span>
<span id="L1029" rel="#L1029">1029</span>
<span id="L1030" rel="#L1030">1030</span>
<span id="L1031" rel="#L1031">1031</span>
<span id="L1032" rel="#L1032">1032</span>
<span id="L1033" rel="#L1033">1033</span>
<span id="L1034" rel="#L1034">1034</span>
<span id="L1035" rel="#L1035">1035</span>
<span id="L1036" rel="#L1036">1036</span>
<span id="L1037" rel="#L1037">1037</span>
<span id="L1038" rel="#L1038">1038</span>
<span id="L1039" rel="#L1039">1039</span>
<span id="L1040" rel="#L1040">1040</span>
<span id="L1041" rel="#L1041">1041</span>
<span id="L1042" rel="#L1042">1042</span>
<span id="L1043" rel="#L1043">1043</span>
<span id="L1044" rel="#L1044">1044</span>
<span id="L1045" rel="#L1045">1045</span>
<span id="L1046" rel="#L1046">1046</span>
<span id="L1047" rel="#L1047">1047</span>
<span id="L1048" rel="#L1048">1048</span>
<span id="L1049" rel="#L1049">1049</span>
<span id="L1050" rel="#L1050">1050</span>
<span id="L1051" rel="#L1051">1051</span>
<span id="L1052" rel="#L1052">1052</span>
<span id="L1053" rel="#L1053">1053</span>
<span id="L1054" rel="#L1054">1054</span>
<span id="L1055" rel="#L1055">1055</span>
<span id="L1056" rel="#L1056">1056</span>
<span id="L1057" rel="#L1057">1057</span>
<span id="L1058" rel="#L1058">1058</span>
<span id="L1059" rel="#L1059">1059</span>
<span id="L1060" rel="#L1060">1060</span>
<span id="L1061" rel="#L1061">1061</span>
<span id="L1062" rel="#L1062">1062</span>
<span id="L1063" rel="#L1063">1063</span>
<span id="L1064" rel="#L1064">1064</span>
<span id="L1065" rel="#L1065">1065</span>
<span id="L1066" rel="#L1066">1066</span>
<span id="L1067" rel="#L1067">1067</span>
<span id="L1068" rel="#L1068">1068</span>
<span id="L1069" rel="#L1069">1069</span>
<span id="L1070" rel="#L1070">1070</span>
<span id="L1071" rel="#L1071">1071</span>
<span id="L1072" rel="#L1072">1072</span>
<span id="L1073" rel="#L1073">1073</span>
<span id="L1074" rel="#L1074">1074</span>
<span id="L1075" rel="#L1075">1075</span>
<span id="L1076" rel="#L1076">1076</span>
<span id="L1077" rel="#L1077">1077</span>
<span id="L1078" rel="#L1078">1078</span>
<span id="L1079" rel="#L1079">1079</span>
<span id="L1080" rel="#L1080">1080</span>
<span id="L1081" rel="#L1081">1081</span>
<span id="L1082" rel="#L1082">1082</span>
<span id="L1083" rel="#L1083">1083</span>
<span id="L1084" rel="#L1084">1084</span>
<span id="L1085" rel="#L1085">1085</span>
<span id="L1086" rel="#L1086">1086</span>
<span id="L1087" rel="#L1087">1087</span>
<span id="L1088" rel="#L1088">1088</span>
<span id="L1089" rel="#L1089">1089</span>
<span id="L1090" rel="#L1090">1090</span>
<span id="L1091" rel="#L1091">1091</span>
<span id="L1092" rel="#L1092">1092</span>
<span id="L1093" rel="#L1093">1093</span>
<span id="L1094" rel="#L1094">1094</span>
<span id="L1095" rel="#L1095">1095</span>
<span id="L1096" rel="#L1096">1096</span>
<span id="L1097" rel="#L1097">1097</span>
<span id="L1098" rel="#L1098">1098</span>
<span id="L1099" rel="#L1099">1099</span>
<span id="L1100" rel="#L1100">1100</span>
<span id="L1101" rel="#L1101">1101</span>
<span id="L1102" rel="#L1102">1102</span>
<span id="L1103" rel="#L1103">1103</span>
<span id="L1104" rel="#L1104">1104</span>
<span id="L1105" rel="#L1105">1105</span>
<span id="L1106" rel="#L1106">1106</span>
<span id="L1107" rel="#L1107">1107</span>
<span id="L1108" rel="#L1108">1108</span>
<span id="L1109" rel="#L1109">1109</span>
<span id="L1110" rel="#L1110">1110</span>
<span id="L1111" rel="#L1111">1111</span>
<span id="L1112" rel="#L1112">1112</span>
<span id="L1113" rel="#L1113">1113</span>
<span id="L1114" rel="#L1114">1114</span>
<span id="L1115" rel="#L1115">1115</span>
<span id="L1116" rel="#L1116">1116</span>
<span id="L1117" rel="#L1117">1117</span>
<span id="L1118" rel="#L1118">1118</span>
<span id="L1119" rel="#L1119">1119</span>
<span id="L1120" rel="#L1120">1120</span>
<span id="L1121" rel="#L1121">1121</span>
<span id="L1122" rel="#L1122">1122</span>
<span id="L1123" rel="#L1123">1123</span>
<span id="L1124" rel="#L1124">1124</span>
<span id="L1125" rel="#L1125">1125</span>
<span id="L1126" rel="#L1126">1126</span>
<span id="L1127" rel="#L1127">1127</span>
<span id="L1128" rel="#L1128">1128</span>
<span id="L1129" rel="#L1129">1129</span>
<span id="L1130" rel="#L1130">1130</span>
<span id="L1131" rel="#L1131">1131</span>
<span id="L1132" rel="#L1132">1132</span>
<span id="L1133" rel="#L1133">1133</span>
<span id="L1134" rel="#L1134">1134</span>
<span id="L1135" rel="#L1135">1135</span>
<span id="L1136" rel="#L1136">1136</span>
<span id="L1137" rel="#L1137">1137</span>
<span id="L1138" rel="#L1138">1138</span>
<span id="L1139" rel="#L1139">1139</span>
<span id="L1140" rel="#L1140">1140</span>
<span id="L1141" rel="#L1141">1141</span>
<span id="L1142" rel="#L1142">1142</span>
<span id="L1143" rel="#L1143">1143</span>
<span id="L1144" rel="#L1144">1144</span>
<span id="L1145" rel="#L1145">1145</span>
<span id="L1146" rel="#L1146">1146</span>
<span id="L1147" rel="#L1147">1147</span>
<span id="L1148" rel="#L1148">1148</span>
<span id="L1149" rel="#L1149">1149</span>
<span id="L1150" rel="#L1150">1150</span>
<span id="L1151" rel="#L1151">1151</span>
<span id="L1152" rel="#L1152">1152</span>
<span id="L1153" rel="#L1153">1153</span>
<span id="L1154" rel="#L1154">1154</span>
<span id="L1155" rel="#L1155">1155</span>
<span id="L1156" rel="#L1156">1156</span>
<span id="L1157" rel="#L1157">1157</span>
<span id="L1158" rel="#L1158">1158</span>
<span id="L1159" rel="#L1159">1159</span>
<span id="L1160" rel="#L1160">1160</span>
<span id="L1161" rel="#L1161">1161</span>
<span id="L1162" rel="#L1162">1162</span>
<span id="L1163" rel="#L1163">1163</span>
<span id="L1164" rel="#L1164">1164</span>
<span id="L1165" rel="#L1165">1165</span>
<span id="L1166" rel="#L1166">1166</span>
<span id="L1167" rel="#L1167">1167</span>
<span id="L1168" rel="#L1168">1168</span>
<span id="L1169" rel="#L1169">1169</span>
<span id="L1170" rel="#L1170">1170</span>
<span id="L1171" rel="#L1171">1171</span>
<span id="L1172" rel="#L1172">1172</span>
<span id="L1173" rel="#L1173">1173</span>
<span id="L1174" rel="#L1174">1174</span>
<span id="L1175" rel="#L1175">1175</span>
<span id="L1176" rel="#L1176">1176</span>
<span id="L1177" rel="#L1177">1177</span>
<span id="L1178" rel="#L1178">1178</span>
<span id="L1179" rel="#L1179">1179</span>
<span id="L1180" rel="#L1180">1180</span>
<span id="L1181" rel="#L1181">1181</span>
<span id="L1182" rel="#L1182">1182</span>
<span id="L1183" rel="#L1183">1183</span>
<span id="L1184" rel="#L1184">1184</span>
<span id="L1185" rel="#L1185">1185</span>
<span id="L1186" rel="#L1186">1186</span>
<span id="L1187" rel="#L1187">1187</span>
<span id="L1188" rel="#L1188">1188</span>
<span id="L1189" rel="#L1189">1189</span>
<span id="L1190" rel="#L1190">1190</span>
<span id="L1191" rel="#L1191">1191</span>
<span id="L1192" rel="#L1192">1192</span>
<span id="L1193" rel="#L1193">1193</span>
<span id="L1194" rel="#L1194">1194</span>
<span id="L1195" rel="#L1195">1195</span>
<span id="L1196" rel="#L1196">1196</span>
<span id="L1197" rel="#L1197">1197</span>
<span id="L1198" rel="#L1198">1198</span>
<span id="L1199" rel="#L1199">1199</span>
<span id="L1200" rel="#L1200">1200</span>
<span id="L1201" rel="#L1201">1201</span>
<span id="L1202" rel="#L1202">1202</span>
<span id="L1203" rel="#L1203">1203</span>
<span id="L1204" rel="#L1204">1204</span>
<span id="L1205" rel="#L1205">1205</span>
<span id="L1206" rel="#L1206">1206</span>
<span id="L1207" rel="#L1207">1207</span>
<span id="L1208" rel="#L1208">1208</span>
<span id="L1209" rel="#L1209">1209</span>
<span id="L1210" rel="#L1210">1210</span>
<span id="L1211" rel="#L1211">1211</span>
<span id="L1212" rel="#L1212">1212</span>
<span id="L1213" rel="#L1213">1213</span>
<span id="L1214" rel="#L1214">1214</span>
<span id="L1215" rel="#L1215">1215</span>
<span id="L1216" rel="#L1216">1216</span>
<span id="L1217" rel="#L1217">1217</span>
<span id="L1218" rel="#L1218">1218</span>
<span id="L1219" rel="#L1219">1219</span>
<span id="L1220" rel="#L1220">1220</span>
<span id="L1221" rel="#L1221">1221</span>
<span id="L1222" rel="#L1222">1222</span>
<span id="L1223" rel="#L1223">1223</span>
<span id="L1224" rel="#L1224">1224</span>
<span id="L1225" rel="#L1225">1225</span>
<span id="L1226" rel="#L1226">1226</span>
<span id="L1227" rel="#L1227">1227</span>
<span id="L1228" rel="#L1228">1228</span>
<span id="L1229" rel="#L1229">1229</span>
<span id="L1230" rel="#L1230">1230</span>
<span id="L1231" rel="#L1231">1231</span>
<span id="L1232" rel="#L1232">1232</span>
<span id="L1233" rel="#L1233">1233</span>
<span id="L1234" rel="#L1234">1234</span>
<span id="L1235" rel="#L1235">1235</span>
<span id="L1236" rel="#L1236">1236</span>
<span id="L1237" rel="#L1237">1237</span>
<span id="L1238" rel="#L1238">1238</span>
<span id="L1239" rel="#L1239">1239</span>
<span id="L1240" rel="#L1240">1240</span>
<span id="L1241" rel="#L1241">1241</span>
<span id="L1242" rel="#L1242">1242</span>
<span id="L1243" rel="#L1243">1243</span>
<span id="L1244" rel="#L1244">1244</span>
<span id="L1245" rel="#L1245">1245</span>
<span id="L1246" rel="#L1246">1246</span>
<span id="L1247" rel="#L1247">1247</span>
<span id="L1248" rel="#L1248">1248</span>
<span id="L1249" rel="#L1249">1249</span>
<span id="L1250" rel="#L1250">1250</span>
<span id="L1251" rel="#L1251">1251</span>
<span id="L1252" rel="#L1252">1252</span>
<span id="L1253" rel="#L1253">1253</span>
<span id="L1254" rel="#L1254">1254</span>
<span id="L1255" rel="#L1255">1255</span>
<span id="L1256" rel="#L1256">1256</span>
<span id="L1257" rel="#L1257">1257</span>
<span id="L1258" rel="#L1258">1258</span>
<span id="L1259" rel="#L1259">1259</span>
<span id="L1260" rel="#L1260">1260</span>
<span id="L1261" rel="#L1261">1261</span>
<span id="L1262" rel="#L1262">1262</span>
<span id="L1263" rel="#L1263">1263</span>
<span id="L1264" rel="#L1264">1264</span>
<span id="L1265" rel="#L1265">1265</span>
<span id="L1266" rel="#L1266">1266</span>
<span id="L1267" rel="#L1267">1267</span>
<span id="L1268" rel="#L1268">1268</span>
<span id="L1269" rel="#L1269">1269</span>
<span id="L1270" rel="#L1270">1270</span>
<span id="L1271" rel="#L1271">1271</span>
<span id="L1272" rel="#L1272">1272</span>
<span id="L1273" rel="#L1273">1273</span>
<span id="L1274" rel="#L1274">1274</span>
<span id="L1275" rel="#L1275">1275</span>
<span id="L1276" rel="#L1276">1276</span>
<span id="L1277" rel="#L1277">1277</span>
<span id="L1278" rel="#L1278">1278</span>
<span id="L1279" rel="#L1279">1279</span>
<span id="L1280" rel="#L1280">1280</span>
<span id="L1281" rel="#L1281">1281</span>
<span id="L1282" rel="#L1282">1282</span>
<span id="L1283" rel="#L1283">1283</span>
<span id="L1284" rel="#L1284">1284</span>
<span id="L1285" rel="#L1285">1285</span>
<span id="L1286" rel="#L1286">1286</span>
<span id="L1287" rel="#L1287">1287</span>
<span id="L1288" rel="#L1288">1288</span>
<span id="L1289" rel="#L1289">1289</span>
<span id="L1290" rel="#L1290">1290</span>
<span id="L1291" rel="#L1291">1291</span>
<span id="L1292" rel="#L1292">1292</span>
<span id="L1293" rel="#L1293">1293</span>
<span id="L1294" rel="#L1294">1294</span>
<span id="L1295" rel="#L1295">1295</span>
<span id="L1296" rel="#L1296">1296</span>
<span id="L1297" rel="#L1297">1297</span>
<span id="L1298" rel="#L1298">1298</span>
<span id="L1299" rel="#L1299">1299</span>
<span id="L1300" rel="#L1300">1300</span>
<span id="L1301" rel="#L1301">1301</span>
<span id="L1302" rel="#L1302">1302</span>
<span id="L1303" rel="#L1303">1303</span>
<span id="L1304" rel="#L1304">1304</span>
<span id="L1305" rel="#L1305">1305</span>
<span id="L1306" rel="#L1306">1306</span>
<span id="L1307" rel="#L1307">1307</span>
<span id="L1308" rel="#L1308">1308</span>
<span id="L1309" rel="#L1309">1309</span>
<span id="L1310" rel="#L1310">1310</span>
<span id="L1311" rel="#L1311">1311</span>
<span id="L1312" rel="#L1312">1312</span>
<span id="L1313" rel="#L1313">1313</span>
<span id="L1314" rel="#L1314">1314</span>
<span id="L1315" rel="#L1315">1315</span>
<span id="L1316" rel="#L1316">1316</span>
<span id="L1317" rel="#L1317">1317</span>
<span id="L1318" rel="#L1318">1318</span>
<span id="L1319" rel="#L1319">1319</span>
<span id="L1320" rel="#L1320">1320</span>
<span id="L1321" rel="#L1321">1321</span>
<span id="L1322" rel="#L1322">1322</span>
<span id="L1323" rel="#L1323">1323</span>
<span id="L1324" rel="#L1324">1324</span>
<span id="L1325" rel="#L1325">1325</span>
<span id="L1326" rel="#L1326">1326</span>
<span id="L1327" rel="#L1327">1327</span>
<span id="L1328" rel="#L1328">1328</span>
<span id="L1329" rel="#L1329">1329</span>
<span id="L1330" rel="#L1330">1330</span>
<span id="L1331" rel="#L1331">1331</span>
<span id="L1332" rel="#L1332">1332</span>
<span id="L1333" rel="#L1333">1333</span>
<span id="L1334" rel="#L1334">1334</span>
<span id="L1335" rel="#L1335">1335</span>
<span id="L1336" rel="#L1336">1336</span>
<span id="L1337" rel="#L1337">1337</span>
<span id="L1338" rel="#L1338">1338</span>
<span id="L1339" rel="#L1339">1339</span>
<span id="L1340" rel="#L1340">1340</span>
<span id="L1341" rel="#L1341">1341</span>
<span id="L1342" rel="#L1342">1342</span>
<span id="L1343" rel="#L1343">1343</span>
<span id="L1344" rel="#L1344">1344</span>
<span id="L1345" rel="#L1345">1345</span>
<span id="L1346" rel="#L1346">1346</span>
<span id="L1347" rel="#L1347">1347</span>
<span id="L1348" rel="#L1348">1348</span>
<span id="L1349" rel="#L1349">1349</span>
<span id="L1350" rel="#L1350">1350</span>
<span id="L1351" rel="#L1351">1351</span>
<span id="L1352" rel="#L1352">1352</span>
<span id="L1353" rel="#L1353">1353</span>
<span id="L1354" rel="#L1354">1354</span>
<span id="L1355" rel="#L1355">1355</span>
<span id="L1356" rel="#L1356">1356</span>
<span id="L1357" rel="#L1357">1357</span>
<span id="L1358" rel="#L1358">1358</span>
<span id="L1359" rel="#L1359">1359</span>
<span id="L1360" rel="#L1360">1360</span>
<span id="L1361" rel="#L1361">1361</span>
<span id="L1362" rel="#L1362">1362</span>
<span id="L1363" rel="#L1363">1363</span>
<span id="L1364" rel="#L1364">1364</span>
<span id="L1365" rel="#L1365">1365</span>
<span id="L1366" rel="#L1366">1366</span>
<span id="L1367" rel="#L1367">1367</span>
<span id="L1368" rel="#L1368">1368</span>
<span id="L1369" rel="#L1369">1369</span>
<span id="L1370" rel="#L1370">1370</span>
<span id="L1371" rel="#L1371">1371</span>
<span id="L1372" rel="#L1372">1372</span>
<span id="L1373" rel="#L1373">1373</span>
<span id="L1374" rel="#L1374">1374</span>
<span id="L1375" rel="#L1375">1375</span>
<span id="L1376" rel="#L1376">1376</span>
<span id="L1377" rel="#L1377">1377</span>
<span id="L1378" rel="#L1378">1378</span>
<span id="L1379" rel="#L1379">1379</span>
<span id="L1380" rel="#L1380">1380</span>
<span id="L1381" rel="#L1381">1381</span>
<span id="L1382" rel="#L1382">1382</span>
<span id="L1383" rel="#L1383">1383</span>
<span id="L1384" rel="#L1384">1384</span>
<span id="L1385" rel="#L1385">1385</span>
<span id="L1386" rel="#L1386">1386</span>
<span id="L1387" rel="#L1387">1387</span>
<span id="L1388" rel="#L1388">1388</span>
<span id="L1389" rel="#L1389">1389</span>
<span id="L1390" rel="#L1390">1390</span>
<span id="L1391" rel="#L1391">1391</span>
<span id="L1392" rel="#L1392">1392</span>
<span id="L1393" rel="#L1393">1393</span>
<span id="L1394" rel="#L1394">1394</span>
<span id="L1395" rel="#L1395">1395</span>
<span id="L1396" rel="#L1396">1396</span>
<span id="L1397" rel="#L1397">1397</span>
<span id="L1398" rel="#L1398">1398</span>
<span id="L1399" rel="#L1399">1399</span>
<span id="L1400" rel="#L1400">1400</span>
<span id="L1401" rel="#L1401">1401</span>
<span id="L1402" rel="#L1402">1402</span>
<span id="L1403" rel="#L1403">1403</span>
<span id="L1404" rel="#L1404">1404</span>
<span id="L1405" rel="#L1405">1405</span>
<span id="L1406" rel="#L1406">1406</span>
<span id="L1407" rel="#L1407">1407</span>
<span id="L1408" rel="#L1408">1408</span>
<span id="L1409" rel="#L1409">1409</span>
<span id="L1410" rel="#L1410">1410</span>
<span id="L1411" rel="#L1411">1411</span>
<span id="L1412" rel="#L1412">1412</span>
<span id="L1413" rel="#L1413">1413</span>
<span id="L1414" rel="#L1414">1414</span>
<span id="L1415" rel="#L1415">1415</span>
<span id="L1416" rel="#L1416">1416</span>
<span id="L1417" rel="#L1417">1417</span>
<span id="L1418" rel="#L1418">1418</span>
<span id="L1419" rel="#L1419">1419</span>
<span id="L1420" rel="#L1420">1420</span>
<span id="L1421" rel="#L1421">1421</span>
<span id="L1422" rel="#L1422">1422</span>
<span id="L1423" rel="#L1423">1423</span>
<span id="L1424" rel="#L1424">1424</span>
<span id="L1425" rel="#L1425">1425</span>
<span id="L1426" rel="#L1426">1426</span>
<span id="L1427" rel="#L1427">1427</span>
<span id="L1428" rel="#L1428">1428</span>
<span id="L1429" rel="#L1429">1429</span>
<span id="L1430" rel="#L1430">1430</span>
<span id="L1431" rel="#L1431">1431</span>
<span id="L1432" rel="#L1432">1432</span>
<span id="L1433" rel="#L1433">1433</span>
<span id="L1434" rel="#L1434">1434</span>
<span id="L1435" rel="#L1435">1435</span>
<span id="L1436" rel="#L1436">1436</span>
<span id="L1437" rel="#L1437">1437</span>
<span id="L1438" rel="#L1438">1438</span>
<span id="L1439" rel="#L1439">1439</span>
<span id="L1440" rel="#L1440">1440</span>
<span id="L1441" rel="#L1441">1441</span>
<span id="L1442" rel="#L1442">1442</span>
<span id="L1443" rel="#L1443">1443</span>
<span id="L1444" rel="#L1444">1444</span>
<span id="L1445" rel="#L1445">1445</span>
<span id="L1446" rel="#L1446">1446</span>
<span id="L1447" rel="#L1447">1447</span>
<span id="L1448" rel="#L1448">1448</span>
<span id="L1449" rel="#L1449">1449</span>
<span id="L1450" rel="#L1450">1450</span>
<span id="L1451" rel="#L1451">1451</span>
<span id="L1452" rel="#L1452">1452</span>
<span id="L1453" rel="#L1453">1453</span>
<span id="L1454" rel="#L1454">1454</span>
<span id="L1455" rel="#L1455">1455</span>
<span id="L1456" rel="#L1456">1456</span>
<span id="L1457" rel="#L1457">1457</span>
<span id="L1458" rel="#L1458">1458</span>
<span id="L1459" rel="#L1459">1459</span>
<span id="L1460" rel="#L1460">1460</span>
<span id="L1461" rel="#L1461">1461</span>
<span id="L1462" rel="#L1462">1462</span>
<span id="L1463" rel="#L1463">1463</span>
<span id="L1464" rel="#L1464">1464</span>
<span id="L1465" rel="#L1465">1465</span>
<span id="L1466" rel="#L1466">1466</span>
<span id="L1467" rel="#L1467">1467</span>
<span id="L1468" rel="#L1468">1468</span>
<span id="L1469" rel="#L1469">1469</span>
<span id="L1470" rel="#L1470">1470</span>
<span id="L1471" rel="#L1471">1471</span>
<span id="L1472" rel="#L1472">1472</span>
<span id="L1473" rel="#L1473">1473</span>
<span id="L1474" rel="#L1474">1474</span>
<span id="L1475" rel="#L1475">1475</span>
<span id="L1476" rel="#L1476">1476</span>
<span id="L1477" rel="#L1477">1477</span>
<span id="L1478" rel="#L1478">1478</span>
<span id="L1479" rel="#L1479">1479</span>
<span id="L1480" rel="#L1480">1480</span>
<span id="L1481" rel="#L1481">1481</span>
<span id="L1482" rel="#L1482">1482</span>
<span id="L1483" rel="#L1483">1483</span>
<span id="L1484" rel="#L1484">1484</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><br/></div><div class='line' id='LC2'><span class="c1">####minRQ: An estimator of integrated quarticity </span></div><div class='line' id='LC3'><span class="c1">#from applying the minimum operator on blocks of two returns.</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'>minRQ <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span>align.by<span class="o">=</span><span class="kc">NULL</span><span class="p">,</span>align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC6'><span class="p">{</span></div><div class='line' id='LC7'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC8'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC9'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC10'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC11'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC12'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC13'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC14'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> minRQ<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span> makeReturns<span class="p">)</span></div><div class='line' id='LC15'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC16'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC17'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC18'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC22'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makeReturns<span class="p">)</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;q     <span class="o">=</span> as.zoo<span class="p">(</span>abs<span class="p">(</span>as.numeric<span class="p">(</span>rdata<span class="p">)))</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;q     <span class="o">=</span> as.numeric<span class="p">(</span>rollapply<span class="p">(</span>q<span class="p">,</span> width <span class="o">=</span> <span class="m">2</span><span class="p">,</span> FUN <span class="o">=</span> min<span class="p">,</span> by <span class="o">=</span> <span class="m">1</span><span class="p">,</span> align <span class="o">=</span> <span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;N     <span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span><span class="m">+1</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;minRQ <span class="o">=</span> pi<span class="o">*</span>N<span class="o">/</span><span class="p">(</span><span class="m">3</span><span class="o">*</span>pi<span class="m">-8</span><span class="p">)</span><span class="o">*</span><span class="p">(</span>N<span class="o">/</span><span class="p">(</span>N<span class="m">-1</span><span class="p">))</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="m">4</span><span class="p">)</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>minRQ<span class="p">)</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC32'><span class="p">}</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="c1">####medRQ: An estimator of integrated quarticity </span></div><div class='line' id='LC36'><span class="c1">#from applying the median operator on blocks of three returns. </span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'>medRQ <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC39'><span class="p">{</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC43'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC44'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC45'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> medRQ<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span> makeReturns<span class="p">)</span> </div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC51'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makeReturns<span class="p">)</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;q <span class="o">=</span> abs<span class="p">(</span>as.numeric<span class="p">(</span>rdata<span class="p">))</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;q <span class="o">=</span> as.numeric<span class="p">(</span>rollmedian<span class="p">(</span>q<span class="p">,</span> k <span class="o">=</span> <span class="m">3</span><span class="p">,</span>align<span class="o">=</span><span class="s">&quot;center&quot;</span><span class="p">))</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;N <span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span><span class="m">+2</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;medRQ <span class="o">=</span> <span class="m">3</span><span class="o">*</span>pi<span class="o">*</span>N<span class="o">/</span><span class="p">(</span><span class="m">9</span><span class="o">*</span>pi<span class="m">+72-53</span><span class="o">*</span>sqrt<span class="p">(</span><span class="m">3</span><span class="p">))</span><span class="o">*</span><span class="p">(</span>N<span class="o">/</span><span class="p">(</span>N<span class="m">-2</span><span class="p">))</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="m">4</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>medRQ<span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;<span class="p">}</span> </div><div class='line' id='LC65'><span class="p">}</span></div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'><span class="c1">####Realized quarticity of highfrequency return series.####</span></div><div class='line' id='LC68'><br/></div><div class='line' id='LC69'>rQuar <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC70'><span class="p">{</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC75'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rQuar<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;q     <span class="o">=</span> as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;N     <span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span><span class="m">+1</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;rQuar <span class="o">=</span> N<span class="o">/</span><span class="m">3</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="m">4</span><span class="p">)</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rQuar<span class="p">)</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC97'><span class="p">}</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="c1">####Realized quadpower variation of highfrequency return series####</span></div><div class='line' id='LC100'><br/></div><div class='line' id='LC101'>rQPVar <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC102'><span class="p">{</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC106'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC107'>&nbsp;&nbsp;multixts <span class="o">=</span>highfrequency<span class="o">:::</span> .multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC108'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC109'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rQPVar<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span>  <span class="c1">##check FUN</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC114'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC115'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span>highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;q      <span class="o">=</span> as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;q      <span class="o">=</span> abs<span class="p">(</span>rollapply<span class="p">(</span>q<span class="p">,</span>width<span class="o">=</span><span class="m">4</span><span class="p">,</span>FUN<span class="o">=</span>prod<span class="p">,</span>align<span class="o">=</span><span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;N      <span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span><span class="m">+3</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;rQPVar <span class="o">=</span> N<span class="o">/</span><span class="p">(</span>N<span class="m">-3</span><span class="p">)</span><span class="o">*</span>pi<span class="o">^</span><span class="m">2</span><span class="o">/</span><span class="m">4</span><span class="o">*</span>sum<span class="p">(</span>q<span class="p">)</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rQPVar<span class="p">)</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC130'><span class="p">}</span></div><div class='line' id='LC131'><br/></div><div class='line' id='LC132'><span class="c1">####Realized tripower variation of highfrequency return series.####</span></div><div class='line' id='LC133'><br/></div><div class='line' id='LC134'>rTPVar <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC135'><span class="p">{</span></div><div class='line' id='LC136'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC139'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC140'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC142'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rTPVar<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC148'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;&nbsp;q      <span class="o">=</span> as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;q      <span class="o">=</span> abs<span class="p">(</span>rollapply<span class="p">(</span>q<span class="p">,</span>width <span class="o">=</span> <span class="m">3</span><span class="p">,</span> FUN <span class="o">=</span> prod<span class="p">,</span> align <span class="o">=</span> <span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;N      <span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span><span class="m">+2</span></div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;&nbsp;rTPVar <span class="o">=</span> N<span class="o">/</span><span class="p">(</span>N<span class="m">-2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="o">/</span><span class="p">(</span><span class="m">4</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">7</span><span class="o">/</span><span class="m">6</span><span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="p">(</span><span class="m">4</span><span class="o">/</span><span class="m">3</span><span class="p">))</span></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rTPVar<span class="p">)</span></div><div class='line' id='LC162'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC163'><span class="p">}</span></div><div class='line' id='LC164'><br/></div><div class='line' id='LC165'><br/></div><div class='line' id='LC166'><br/></div><div class='line' id='LC167'><span class="c1">#### Standard error and confidence band of RV measures.####</span></div><div class='line' id='LC168'><span class="c1"># User can choose integrated variance (IV) estimators RV, BV, minRV or medRV; </span></div><div class='line' id='LC169'><span class="c1">#and integrated quarticity (IQ) estimators: rQuar, TP, QP, minRQ or medRQ.</span></div><div class='line' id='LC170'><span class="c1"># Output: 1)value of IVestimator; </span></div><div class='line' id='LC171'><span class="c1">#2) standard error of IVestimator;</span></div><div class='line' id='LC172'><span class="c1">#3) confidence band of IVestimator. </span></div><div class='line' id='LC173'><br/></div><div class='line' id='LC174'>ivInference <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> IVestimator <span class="o">=</span> <span class="s">&quot;RV&quot;</span><span class="p">,</span> IQestimator <span class="o">=</span> <span class="s">&quot;rQuar&quot;</span><span class="p">,</span> confidence <span class="o">=</span> <span class="m">0.95</span><span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span> <span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC175'><span class="p">{</span></div><div class='line' id='LC176'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">)){</span> rdata <span class="o">=</span> data  <span class="p">}</span></div><div class='line' id='LC177'>&nbsp;&nbsp;</div><div class='line' id='LC178'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC179'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> ivInference<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">))){</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makeReturns<span class="p">){</span>  rdata<span class="o">=</span>makeReturns<span class="p">(</span>rdata<span class="p">)</span>  <span class="p">}</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;N      <span class="o">=</span> length<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;&nbsp;p      <span class="o">=</span> as.numeric<span class="p">(</span>confidence<span class="p">)</span></div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;iq     <span class="o">=</span> .hatiq<span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;&nbsp;iv     <span class="o">=</span> .IV<span class="p">(</span>IVestimator<span class="p">,</span>iq<span class="p">)</span></div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;hatIV  <span class="o">=</span> .hativ<span class="p">(</span>rdata<span class="p">,</span> IVestimator<span class="p">,</span> N<span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;stderr <span class="o">=</span> <span class="m">1</span><span class="o">/</span>sqrt<span class="p">(</span>N<span class="p">)</span><span class="o">*</span>iv</div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">##confidence band</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;lowband  <span class="o">=</span> as.numeric<span class="p">(</span>hatIV<span class="o">-</span>stderr<span class="o">*</span>qnorm<span class="p">(</span>p<span class="p">))</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;highband <span class="o">=</span> as.numeric<span class="p">(</span>hatIV<span class="o">+</span>stderr<span class="o">*</span>qnorm<span class="p">(</span>p<span class="p">))</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;cb <span class="o">&lt;-</span> c<span class="p">(</span>lowband<span class="p">,</span>highband<span class="p">)</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## reports: </span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;out       <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>hativ <span class="o">=</span> hatIV</div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>se    <span class="o">=</span> stderr</div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>cb    <span class="o">=</span> cb</div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC216'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC217'><span class="p">}</span></div><div class='line' id='LC218'><br/></div><div class='line' id='LC219'><br/></div><div class='line' id='LC220'><span class="c1">####BNSjump-test: Barndorff- Nielsen and Shephard tests for the presence of jumps </span></div><div class='line' id='LC221'><span class="c1">#in the price series.</span></div><div class='line' id='LC222'><span class="c1"># It includes option of corrected threshold bipower variation (CTBV).</span></div><div class='line' id='LC223'><br/></div><div class='line' id='LC224'>BNSjumptest <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> IVestimator<span class="o">=</span> <span class="s">&quot;BV&quot;</span><span class="p">,</span> IQestimator<span class="o">=</span> <span class="s">&quot;TP&quot;</span><span class="p">,</span> type<span class="o">=</span> <span class="s">&quot;linear&quot;</span><span class="p">,</span> logtransform<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span> </div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;max<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span> align.by<span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period<span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span> <span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC226'><span class="p">{</span></div><div class='line' id='LC227'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">)){</span>  rdata <span class="o">=</span> data  <span class="p">}</span></div><div class='line' id='LC228'>&nbsp;&nbsp;</div><div class='line' id='LC229'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC230'>&nbsp;&nbsp;</div><div class='line' id='LC231'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span></div><div class='line' id='LC232'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> BNSjumptest<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span> makeReturns<span class="p">)</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC236'>&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makeReturns<span class="p">){</span>  rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span> <span class="p">}</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;N<span class="o">=</span>length<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## hatQV</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;hatQV <span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## hatIV        </span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;hatIV <span class="o">=</span> .hativ<span class="p">(</span> rdata<span class="p">,</span> IVestimator<span class="p">,</span> N<span class="o">=</span>N<span class="p">,</span> <span class="kc">...</span> <span class="p">)</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">##theta</span></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;&nbsp;theta <span class="o">=</span> .tt<span class="p">(</span>IVestimator<span class="p">,</span><span class="kc">...</span><span class="p">)</span>    </div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">##hatIQ</span></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;&nbsp;hatIQ <span class="o">=</span> .hatiq<span class="p">(</span>rdata<span class="p">,</span> IQestimator<span class="p">)</span></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## linear or ratio</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>type<span class="o">==</span><span class="s">&quot;linear&quot;</span><span class="p">)</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">##logtransform</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>logtransform<span class="p">)</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hatQV <span class="o">=</span> log<span class="p">(</span>highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">))</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hatIV <span class="o">=</span> log<span class="p">(</span>.hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span> N<span class="p">,</span> <span class="kc">...</span><span class="p">))</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span><span class="o">!</span>logtransform<span class="p">)</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hatQV <span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hatIV <span class="o">=</span> .hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span> N<span class="p">,</span> <span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## max argument</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>max<span class="p">)</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;product <span class="o">=</span> max<span class="p">(</span><span class="m">1</span><span class="p">,</span>.hatiq<span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span><span class="o">/</span>.hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span> N<span class="p">,</span> <span class="kc">...</span><span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span><span class="o">!</span>max<span class="p">)</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;product <span class="o">=</span> .hatiq<span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a <span class="o">=</span> sqrt<span class="p">(</span>N<span class="p">)</span><span class="o">*</span><span class="p">(</span>hatQV<span class="o">-</span>hatIV<span class="p">)</span><span class="o">/</span>sqrt<span class="p">((</span>theta<span class="m">-2</span><span class="p">)</span><span class="o">*</span>product<span class="p">)</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out                <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>ztest          <span class="o">=</span> a</div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>critical.value <span class="o">=</span> qnorm<span class="p">(</span>c<span class="p">(</span><span class="m">0.025</span><span class="p">,</span><span class="m">0.975</span><span class="p">))</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>pvalue         <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span><span class="o">-</span>abs<span class="p">(</span>a<span class="p">))</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span>   </div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>type<span class="o">==</span><span class="s">&quot;ratio&quot;</span><span class="p">)</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## max argument</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>max<span class="p">)</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;product <span class="o">=</span> max<span class="p">(</span><span class="m">1</span><span class="p">,</span>.hatiq<span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span><span class="o">/</span>.hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span> N<span class="p">,</span> <span class="kc">...</span><span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span><span class="o">!</span>max<span class="p">)</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;product <span class="o">=</span> .hatiq<span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span><span class="o">/</span>.hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span> N<span class="p">,</span> <span class="kc">...</span><span class="p">)</span><span class="o">^</span><span class="m">2</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC304'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a <span class="o">=</span> sqrt<span class="p">(</span>N<span class="p">)</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>.hativ<span class="p">(</span>rdata<span class="p">,</span>IVestimator<span class="p">,</span>  N<span class="p">,</span> <span class="kc">...</span><span class="p">)</span><span class="o">/</span>highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">))</span><span class="o">/</span>sqrt<span class="p">((</span>theta<span class="m">-2</span><span class="p">)</span><span class="o">*</span>product<span class="p">)</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out                <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>ztest          <span class="o">=</span> a</div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>critical.value <span class="o">=</span> qnorm<span class="p">(</span>c<span class="p">(</span><span class="m">0.025</span><span class="p">,</span><span class="m">0.975</span><span class="p">))</span></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>pvalue         <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span><span class="o">-</span>abs<span class="p">(</span>a<span class="p">))</span></div><div class='line' id='LC309'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span>       </div><div class='line' id='LC311'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC312'><span class="p">}</span></div><div class='line' id='LC313'><br/></div><div class='line' id='LC314'><br/></div><div class='line' id='LC315'><span class="c1">####JOjumptest:Jiang and Oomen tests for the presence of jumps in the price series.####</span></div><div class='line' id='LC316'><br/></div><div class='line' id='LC317'>JOjumptest<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>pdata<span class="p">,</span> power<span class="o">=</span><span class="m">4</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC318'><span class="p">{</span></div><div class='line' id='LC319'>&nbsp;&nbsp;R  <span class="o">=</span> .simre<span class="p">(</span>pdata<span class="p">)</span> </div><div class='line' id='LC320'>&nbsp;&nbsp;r  <span class="o">=</span> makeReturns<span class="p">(</span>pdata<span class="p">)</span>  </div><div class='line' id='LC321'>&nbsp;&nbsp;N  <span class="o">=</span> length<span class="p">(</span>pdata<span class="p">)</span><span class="m">-1</span></div><div class='line' id='LC322'>&nbsp;&nbsp;bv <span class="o">=</span> highfrequency<span class="o">:::</span>RBPVar<span class="p">(</span>r<span class="p">)</span></div><div class='line' id='LC323'>&nbsp;&nbsp;rv <span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>r<span class="p">)</span></div><div class='line' id='LC324'>&nbsp;&nbsp;</div><div class='line' id='LC325'>&nbsp;&nbsp;SwV <span class="o">=</span> <span class="m">2</span><span class="o">*</span>sum<span class="p">(</span>R<span class="o">-</span>r<span class="p">)</span></div><div class='line' id='LC326'>&nbsp;&nbsp;mu1 <span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">(</span><span class="m">6</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span><span class="m">6+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC327'>&nbsp;&nbsp;</div><div class='line' id='LC328'>&nbsp;&nbsp;<span class="c1">##mupower:</span></div><div class='line' id='LC329'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>power<span class="o">==</span><span class="m">4</span><span class="p">)</span></div><div class='line' id='LC330'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;q      <span class="o">=</span> abs<span class="p">(</span>rollapply<span class="p">(</span>r<span class="p">,</span> width <span class="o">=</span> <span class="m">4</span><span class="p">,</span> FUN <span class="o">=</span> prod<span class="p">,</span> align <span class="o">=</span> <span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC332'>&nbsp;&nbsp;&nbsp;&nbsp;mu2    <span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">((</span><span class="m">6</span><span class="o">/</span><span class="m">4</span><span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span><span class="m">6</span><span class="o">/</span><span class="m">4+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;av     <span class="o">=</span> mu1<span class="o">/</span><span class="m">9</span> <span class="o">*</span> N<span class="o">^</span><span class="m">3</span><span class="o">*</span><span class="p">(</span>mu2<span class="p">)</span><span class="o">^</span><span class="p">(</span><span class="m">-4</span><span class="p">)</span><span class="o">/</span><span class="p">(</span>N<span class="m">-4-1</span><span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="p">(</span><span class="m">6</span><span class="o">/</span><span class="m">4</span><span class="p">),</span>na.rm<span class="o">=</span> <span class="kc">TRUE</span><span class="p">)</span>   <span class="c1">##check formula</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;JOtest <span class="o">=</span> N<span class="o">*</span>bv<span class="o">/</span>sqrt<span class="p">(</span>av<span class="p">)</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span> rv<span class="o">/</span>SwV<span class="p">)</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;out                <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>ztest          <span class="o">=</span> JOtest</div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>critical.value <span class="o">=</span> qnorm<span class="p">(</span>c<span class="p">(</span><span class="m">0.025</span><span class="p">,</span><span class="m">0.975</span><span class="p">))</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>pvalue         <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span><span class="o">-</span>abs<span class="p">(</span>JOtest<span class="p">))</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC341'>&nbsp;&nbsp;<span class="p">}</span>     </div><div class='line' id='LC342'>&nbsp;&nbsp;</div><div class='line' id='LC343'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>power<span class="o">==</span><span class="m">6</span><span class="p">)</span></div><div class='line' id='LC344'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC345'>&nbsp;&nbsp;&nbsp;&nbsp;q<span class="o">=</span>abs<span class="p">(</span>rollapply<span class="p">(</span>r<span class="p">,</span> width <span class="o">=</span> <span class="m">6</span><span class="p">,</span> FUN <span class="o">=</span> prod<span class="p">,</span> align <span class="o">=</span> <span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC346'>&nbsp;&nbsp;&nbsp;&nbsp;mu2<span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">((</span><span class="m">6</span><span class="o">/</span><span class="m">6</span><span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span><span class="m">6</span><span class="o">/</span><span class="m">6+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;&nbsp;av<span class="o">=</span>mu1<span class="o">/</span><span class="m">9</span> <span class="o">*</span> N<span class="o">^</span><span class="m">3</span><span class="o">*</span><span class="p">(</span>mu2<span class="p">)</span><span class="o">^</span><span class="p">(</span><span class="m">-6</span><span class="p">)</span><span class="o">/</span><span class="p">(</span>N<span class="m">-6-1</span><span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="p">(</span><span class="m">6</span><span class="o">/</span><span class="m">6</span><span class="p">),</span>na.rm<span class="o">=</span> <span class="kc">TRUE</span><span class="p">)</span>   <span class="c1">##check formula</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;JOtest<span class="o">=</span> N<span class="o">*</span>bv<span class="o">/</span>sqrt<span class="p">(</span>av<span class="p">)</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span> rv<span class="o">/</span>SwV<span class="p">)</span></div><div class='line' id='LC349'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;&nbsp;out                <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC351'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>ztest          <span class="o">=</span> JOtest</div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>critical.value <span class="o">=</span> qnorm<span class="p">(</span>c<span class="p">(</span><span class="m">0.025</span><span class="p">,</span><span class="m">0.975</span><span class="p">))</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>pvalue         <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span><span class="o">-</span>abs<span class="p">(</span>JOtest<span class="p">))</span></div><div class='line' id='LC354'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC355'>&nbsp;&nbsp;<span class="p">}</span>     </div><div class='line' id='LC356'><span class="p">}</span>  </div><div class='line' id='LC357'><br/></div><div class='line' id='LC358'><br/></div><div class='line' id='LC359'><span class="c1">####AJjumptest:Ait- Sahalia and Jacod tests for the presence of jumps in the price series.####</span></div><div class='line' id='LC360'><br/></div><div class='line' id='LC361'>AJjumptest <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>pdata<span class="p">,</span> p<span class="o">=</span><span class="m">4</span> <span class="p">,</span> k<span class="o">=</span><span class="m">2</span><span class="p">,</span> align.by<span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span> <span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC362'><span class="p">{</span></div><div class='line' id='LC363'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> <span class="p">{</span>  pdata <span class="o">=</span> data  <span class="p">}</span></div><div class='line' id='LC364'>&nbsp;&nbsp;</div><div class='line' id='LC365'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC366'>&nbsp;&nbsp;</div><div class='line' id='LC367'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC368'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>pdata<span class="p">,</span> AJjumptest<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span> makeReturns<span class="p">)</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC371'>&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC372'>&nbsp;&nbsp;&nbsp;&nbsp;pdata <span class="o">=</span> highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>pdata<span class="p">,</span> on <span class="o">=</span> <span class="s">&quot;seconds&quot;</span><span class="p">,</span> k <span class="o">=</span> <span class="m">1</span><span class="p">)</span></div><div class='line' id='LC373'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC374'>&nbsp;&nbsp;</div><div class='line' id='LC375'>&nbsp;&nbsp;N <span class="o">=</span> length<span class="p">(</span>pdata<span class="p">)</span><span class="m">-1</span><span class="p">;</span></div><div class='line' id='LC376'>&nbsp;&nbsp;p <span class="o">=</span> as.numeric<span class="p">(</span>p<span class="p">);</span></div><div class='line' id='LC377'>&nbsp;&nbsp;k <span class="o">=</span> as.numeric<span class="p">(</span>k<span class="p">);</span></div><div class='line' id='LC378'>&nbsp;&nbsp;</div><div class='line' id='LC379'>&nbsp;&nbsp;alpha <span class="o">=</span> <span class="p">(</span><span class="m">1-1</span><span class="o">/</span>p<span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">;</span></div><div class='line' id='LC380'>&nbsp;&nbsp;w <span class="o">=</span> <span class="m">0.47</span><span class="p">;</span></div><div class='line' id='LC381'>&nbsp;&nbsp;cvalue <span class="o">=</span> alpha<span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">/</span>N<span class="p">)</span><span class="o">^</span>w<span class="p">;</span></div><div class='line' id='LC382'>&nbsp;&nbsp;</div><div class='line' id='LC383'>&nbsp;&nbsp;h <span class="o">=</span> align.period <span class="o">*</span> .scale<span class="p">(</span>align.by<span class="p">)</span></div><div class='line' id='LC384'>&nbsp;&nbsp;hk<span class="o">=</span> h<span class="o">*</span>k</div><div class='line' id='LC385'>&nbsp;&nbsp;</div><div class='line' id='LC386'>&nbsp;&nbsp;seq1 <span class="o">=</span> seq<span class="p">(</span><span class="m">1</span><span class="p">,</span> N<span class="p">,</span> h<span class="p">);</span></div><div class='line' id='LC387'>&nbsp;&nbsp;seq2 <span class="o">=</span> seq<span class="p">(</span><span class="m">1</span><span class="p">,</span> N<span class="p">,</span> hk<span class="p">);</span></div><div class='line' id='LC388'>&nbsp;&nbsp;</div><div class='line' id='LC389'>&nbsp;&nbsp;<span class="c1"># return data</span></div><div class='line' id='LC390'>&nbsp;&nbsp;pdata1 <span class="o">=</span> pdata<span class="p">[</span>seq1<span class="p">];</span></div><div class='line' id='LC391'>&nbsp;&nbsp;pdata2 <span class="o">=</span> pdata<span class="p">[</span>seq2<span class="p">];</span></div><div class='line' id='LC392'>&nbsp;&nbsp;</div><div class='line' id='LC393'>&nbsp;&nbsp;r  <span class="o">=</span> abs<span class="p">(</span>makeReturns<span class="p">(</span>pdata<span class="p">));</span></div><div class='line' id='LC394'>&nbsp;&nbsp;r1 <span class="o">=</span> abs<span class="p">(</span>makeReturns<span class="p">(</span>pdata1<span class="p">));</span></div><div class='line' id='LC395'>&nbsp;&nbsp;r2 <span class="o">=</span> abs<span class="p">(</span>makeReturns<span class="p">(</span>pdata2<span class="p">));</span></div><div class='line' id='LC396'>&nbsp;&nbsp;</div><div class='line' id='LC397'>&nbsp;&nbsp;pv1 <span class="o">=</span> sum<span class="p">(</span>r1<span class="o">^</span>p<span class="p">);</span></div><div class='line' id='LC398'>&nbsp;&nbsp;pv2 <span class="o">=</span> sum<span class="p">(</span>r2<span class="o">^</span>p<span class="p">);</span></div><div class='line' id='LC399'>&nbsp;&nbsp;</div><div class='line' id='LC400'>&nbsp;&nbsp;S <span class="o">=</span> pv1<span class="o">/</span>pv2</div><div class='line' id='LC401'>&nbsp;&nbsp;</div><div class='line' id='LC402'>&nbsp;&nbsp;<span class="c1">## selection return:</span></div><div class='line' id='LC403'>&nbsp;&nbsp;selection <span class="o">&lt;-</span> abs<span class="p">(</span>r<span class="p">)</span> <span class="o">&lt;</span> cvalue</div><div class='line' id='LC404'>&nbsp;&nbsp;rse <span class="o">&lt;-</span> abs<span class="p">(</span>makeReturns<span class="p">(</span>pdata<span class="p">[</span>selection<span class="p">]))</span></div><div class='line' id='LC405'>&nbsp;&nbsp;</div><div class='line' id='LC406'>&nbsp;&nbsp;<span class="c1">## AJ test: </span></div><div class='line' id='LC407'>&nbsp;&nbsp;AJtest <span class="o">=</span> <span class="p">(</span>S<span class="o">-</span>k<span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2-1</span><span class="p">))</span><span class="o">/</span>sqrt<span class="p">(</span>.V<span class="p">(</span>rse<span class="p">,</span>p<span class="p">,</span>k<span class="p">,</span>N<span class="p">))</span></div><div class='line' id='LC408'>&nbsp;&nbsp;</div><div class='line' id='LC409'>&nbsp;&nbsp;out <span class="o">=</span> <span class="p">{};</span></div><div class='line' id='LC410'>&nbsp;&nbsp;out<span class="o">$</span>ztest <span class="o">=</span> AJtest<span class="p">;</span></div><div class='line' id='LC411'>&nbsp;&nbsp;out<span class="o">$</span>critical.value <span class="o">=</span> qnorm<span class="p">(</span>c<span class="p">(</span><span class="m">0.025</span><span class="p">,</span><span class="m">0.975</span><span class="p">));</span></div><div class='line' id='LC412'>&nbsp;&nbsp;out<span class="o">$</span>pvalue <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span><span class="o">-</span>abs<span class="p">(</span>AJtest<span class="p">));</span></div><div class='line' id='LC413'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span>  </div><div class='line' id='LC414'><span class="p">}</span>    </div><div class='line' id='LC415'><br/></div><div class='line' id='LC416'><br/></div><div class='line' id='LC417'><span class="c1">####Realized semivariance####</span></div><div class='line' id='LC418'><br/></div><div class='line' id='LC419'>rSV<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC420'><span class="p">{</span></div><div class='line' id='LC421'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC422'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC423'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC424'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC425'>&nbsp;&nbsp;</div><div class='line' id='LC426'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span> .multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC427'>&nbsp;&nbsp;</div><div class='line' id='LC428'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC429'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC430'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rSV<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span>  </div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC432'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC433'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC434'>&nbsp;&nbsp;</div><div class='line' id='LC435'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC436'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC437'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC438'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span>highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC439'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC440'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC441'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC442'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC443'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC444'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC445'>&nbsp;&nbsp;&nbsp;&nbsp;q <span class="o">=</span> as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC446'>&nbsp;&nbsp;&nbsp;&nbsp;select.down <span class="o">&lt;-</span>rdata <span class="o">&lt;</span><span class="m">0</span></div><div class='line' id='LC447'>&nbsp;&nbsp;&nbsp;&nbsp;select.up <span class="o">&lt;-</span> rdata <span class="o">&gt;</span><span class="m">0</span></div><div class='line' id='LC448'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC449'>&nbsp;&nbsp;&nbsp;&nbsp;rSVd <span class="o">=</span> sum<span class="p">(</span>q<span class="p">[</span>select.down<span class="p">]</span><span class="o">^</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC450'>&nbsp;&nbsp;&nbsp;&nbsp;rSVu <span class="o">=</span> sum<span class="p">(</span>q<span class="p">[</span>select.up<span class="p">]</span><span class="o">^</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC451'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC452'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">=</span><span class="p">{}</span></div><div class='line' id='LC453'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>rSVdownside <span class="o">=</span> rSVd</div><div class='line' id='LC454'>&nbsp;&nbsp;&nbsp;&nbsp;out<span class="o">$</span>rSVupside <span class="o">=</span> rSVu</div><div class='line' id='LC455'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC456'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC457'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC458'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC459'><span class="p">}</span></div><div class='line' id='LC460'><br/></div><div class='line' id='LC461'><br/></div><div class='line' id='LC462'><span class="c1">####Realized skewness####</span></div><div class='line' id='LC463'><br/></div><div class='line' id='LC464'>rSkew <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC465'><span class="p">{</span></div><div class='line' id='LC466'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC467'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC468'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC469'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC470'>&nbsp;&nbsp;</div><div class='line' id='LC471'>&nbsp;&nbsp;multixts <span class="o">=</span>highfrequency<span class="o">:::</span> .multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC472'>&nbsp;&nbsp;</div><div class='line' id='LC473'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC474'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC475'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rSkew<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span></div><div class='line' id='LC476'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC477'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC478'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC479'>&nbsp;&nbsp;</div><div class='line' id='LC480'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC481'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC482'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC483'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span>highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC484'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC485'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC486'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC487'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC488'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC489'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC490'>&nbsp;&nbsp;&nbsp;&nbsp;q<span class="o">=</span>as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC491'>&nbsp;&nbsp;&nbsp;&nbsp;N<span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span></div><div class='line' id='LC492'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC493'>&nbsp;&nbsp;&nbsp;&nbsp;rv<span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC494'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC495'>&nbsp;&nbsp;&nbsp;&nbsp;rSkew<span class="o">=</span> sqrt<span class="p">(</span>N<span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="m">3</span><span class="p">)</span><span class="o">/</span>rv<span class="o">^</span><span class="p">(</span><span class="m">3</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC496'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC497'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rSkew<span class="p">)</span></div><div class='line' id='LC498'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC499'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC500'><span class="p">}</span></div><div class='line' id='LC501'><br/></div><div class='line' id='LC502'><br/></div><div class='line' id='LC503'><span class="c1">####Realized kurtosis####</span></div><div class='line' id='LC504'><br/></div><div class='line' id='LC505'>rKurt <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> align.by <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns <span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC506'><span class="p">{</span></div><div class='line' id='LC507'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC508'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC509'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC510'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC511'>&nbsp;&nbsp;</div><div class='line' id='LC512'>&nbsp;&nbsp;multixts <span class="o">=</span>highfrequency<span class="o">:::</span> .multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC513'>&nbsp;&nbsp;</div><div class='line' id='LC514'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC515'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC516'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rKurt<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span></div><div class='line' id='LC517'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;makeReturns<span class="p">)</span></div><div class='line' id='LC518'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC519'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC520'>&nbsp;&nbsp;</div><div class='line' id='LC521'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC522'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC524'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span>highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC525'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC526'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC527'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC528'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC529'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC531'>&nbsp;&nbsp;&nbsp;&nbsp;q<span class="o">=</span>as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;&nbsp;N<span class="o">=</span> length<span class="p">(</span>q<span class="p">)</span></div><div class='line' id='LC533'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC534'>&nbsp;&nbsp;&nbsp;&nbsp;rv<span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;&nbsp;rkurt<span class="o">=</span> N<span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="m">4</span><span class="p">)</span><span class="o">/</span>rv<span class="o">^</span><span class="p">(</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC538'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rkurt<span class="p">)</span></div><div class='line' id='LC539'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC540'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC541'><span class="p">}</span></div><div class='line' id='LC542'><br/></div><div class='line' id='LC543'><span class="c1">####Realized Multipower Variation (MPV)####</span></div><div class='line' id='LC544'><br/></div><div class='line' id='LC545'>rMPV <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> m<span class="o">=</span> <span class="m">2</span><span class="p">,</span> p<span class="o">=</span><span class="m">2</span><span class="p">,</span> align.by<span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> align.period<span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> makeReturns<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC546'><span class="p">{</span></div><div class='line' id='LC547'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC548'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC549'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC550'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC551'>&nbsp;&nbsp;</div><div class='line' id='LC552'>&nbsp;&nbsp;multixts <span class="o">=</span>highfrequency<span class="o">:::</span> .multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC553'>&nbsp;&nbsp;</div><div class='line' id='LC554'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC555'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC556'>&nbsp;&nbsp;&nbsp;&nbsp;result <span class="o">=</span> apply.daily<span class="p">(</span>rdata<span class="p">,</span> rMPV<span class="p">,</span> align.by<span class="p">,</span> align.period<span class="p">,</span> makeReturns<span class="p">)</span></div><div class='line' id='LC557'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>result<span class="p">)</span></div><div class='line' id='LC558'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC559'>&nbsp;&nbsp;</div><div class='line' id='LC560'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC561'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC562'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">((</span><span class="o">!</span>is.null<span class="p">(</span>align.by<span class="p">))</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="o">!</span>is.null<span class="p">(</span>align.period<span class="p">)))</span> <span class="p">{</span></div><div class='line' id='LC563'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span>highfrequency<span class="o">:::</span>.aggregatets<span class="p">(</span>rdata<span class="p">,</span> on <span class="o">=</span> align.by<span class="p">,</span> k <span class="o">=</span> align.period<span class="p">)</span></div><div class='line' id='LC564'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC565'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC566'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC567'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC568'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC569'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC570'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC571'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>m<span class="o">&gt;</span>p<span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC572'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span> m<span class="o">=</span> as.numeric<span class="p">(</span>m<span class="p">)</span> <span class="c1">##m&gt; p/2</span></div><div class='line' id='LC573'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;p<span class="o">=</span> as.numeric<span class="p">(</span>p<span class="p">)</span></div><div class='line' id='LC574'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q<span class="o">=</span>as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC575'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q<span class="o">=</span>abs<span class="p">(</span>rollapply<span class="p">(</span>q<span class="p">,</span>width<span class="o">=</span>m<span class="p">,</span>FUN<span class="o">=</span>prod<span class="p">,</span>align<span class="o">=</span><span class="s">&quot;left&quot;</span><span class="p">))</span></div><div class='line' id='LC576'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N <span class="o">=</span> length<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC577'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC578'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dmp<span class="o">=</span> <span class="p">(</span><span class="m">2</span><span class="o">^</span><span class="p">((</span>p<span class="o">/</span>m<span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">((</span>p<span class="o">/</span>m<span class="m">+1</span><span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">))</span><span class="o">^</span><span class="p">(</span><span class="o">-</span>m<span class="p">)</span></div><div class='line' id='LC579'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC580'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rmpv <span class="o">=</span> dmp<span class="o">*</span> N<span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">/</span><span class="p">(</span>N<span class="o">-</span>m<span class="m">+1</span><span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>q<span class="o">^</span><span class="p">(</span>p<span class="o">/</span>m<span class="p">))</span></div><div class='line' id='LC581'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rmpv<span class="p">)</span></div><div class='line' id='LC582'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC583'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">else</span><span class="p">{</span>warning<span class="p">(</span><span class="s">&quot;Please supply m&gt;p/2 for the arguments m and p&quot;</span><span class="p">)}</span></div><div class='line' id='LC584'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC585'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC586'><span class="p">}</span>  </div><div class='line' id='LC587'><br/></div><div class='line' id='LC588'><br/></div><div class='line' id='LC589'><span class="c1">####Preaveraging estimators (matrix)####</span></div><div class='line' id='LC590'><span class="c1">##Preaveraging</span></div><div class='line' id='LC591'>MRC<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>pdata<span class="p">,</span> pairwise <span class="o">=</span> <span class="kc">FALSE</span> <span class="p">,</span> makePsd<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC592'><span class="p">{</span></div><div class='line' id='LC593'>&nbsp;&nbsp;</div><div class='line' id='LC594'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>is.list<span class="p">(</span>pdata<span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC595'>&nbsp;&nbsp;&nbsp;&nbsp;n <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC596'>&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span> <span class="p">{</span></div><div class='line' id='LC597'>&nbsp;&nbsp;&nbsp;&nbsp;n <span class="o">=</span> length<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC598'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC599'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>n <span class="o">==</span> <span class="m">1</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC600'>&nbsp;&nbsp;&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>pdata<span class="p">);</span> </div><div class='line' id='LC601'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>multixts<span class="p">){</span> stop<span class="p">(</span><span class="s">&quot;This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input&quot;</span><span class="p">);</span> <span class="p">}</span></div><div class='line' id='LC602'>&nbsp;&nbsp;&nbsp;&nbsp;mrc <span class="o">=</span> .crv<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC603'>&nbsp;&nbsp;<span class="p">}</span>  </div><div class='line' id='LC604'>&nbsp;&nbsp;</div><div class='line' id='LC605'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>n <span class="o">&gt;</span> <span class="m">1</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC606'>&nbsp;&nbsp;&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>pdata<span class="p">[[</span><span class="m">1</span><span class="p">]]);</span> </div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>multixts<span class="p">){</span> stop<span class="p">(</span><span class="s">&quot;This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input&quot;</span><span class="p">);</span> <span class="p">}</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC609'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>pairwise<span class="p">){</span></div><div class='line' id='LC610'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cov <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> n <span class="o">*</span> n<span class="p">),</span> ncol <span class="o">=</span> n<span class="p">)</span></div><div class='line' id='LC611'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diagonal <span class="o">=</span> c<span class="p">()</span></div><div class='line' id='LC612'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>n<span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC613'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diagonal<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span> .crv<span class="p">(</span>pdata<span class="p">[[</span>i<span class="p">]])</span></div><div class='line' id='LC614'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC615'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diag<span class="p">(</span>cov<span class="p">)</span> <span class="o">=</span> diagonal</div><div class='line' id='LC616'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC617'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">2</span><span class="o">:</span>n<span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="p">(</span>i <span class="o">-</span> <span class="m">1</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC619'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cov<span class="p">[</span>i<span class="p">,</span> j<span class="p">]</span> <span class="o">=</span> cov<span class="p">[</span>j<span class="p">,</span> i<span class="p">]</span> <span class="o">=</span> .preav_bi<span class="p">(</span>pdata<span class="p">[[</span>i<span class="p">]],</span> pdata<span class="p">[[</span>j<span class="p">]])</span></div><div class='line' id='LC620'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC621'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC622'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC623'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mrc <span class="o">=</span> cov</div><div class='line' id='LC624'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC625'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makePsd<span class="p">)</span></div><div class='line' id='LC626'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC627'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mrc<span class="o">=</span>makePsd<span class="p">(</span>mrc<span class="p">)</span></div><div class='line' id='LC628'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC629'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC630'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC631'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x     <span class="o">=</span> refreshTime<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC632'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N     <span class="o">=</span> nrow<span class="p">(</span>x<span class="p">)</span></div><div class='line' id='LC633'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;theta <span class="o">=</span> <span class="m">0.8</span> <span class="c1">##recommendation by Hautsch and Podolskij</span></div><div class='line' id='LC634'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kn    <span class="o">=</span> floor<span class="p">(</span>theta<span class="o">*</span>sqrt<span class="p">(</span>N<span class="p">))</span>  </div><div class='line' id='LC635'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC636'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">##psi:</span></div><div class='line' id='LC637'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;psi1 <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC638'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;psi2 <span class="o">=</span> <span class="m">1</span><span class="o">/</span><span class="m">12</span></div><div class='line' id='LC639'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC640'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;psi1kn <span class="o">=</span> kn<span class="o">*</span> sum<span class="p">((</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span> <span class="o">-</span> .gfunction<span class="p">((</span> <span class="p">(</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span> <span class="o">-</span> <span class="m">1</span> <span class="p">)</span><span class="o">/</span>kn <span class="p">)</span> <span class="p">)</span><span class="o">^</span><span class="m">2</span> <span class="p">)</span></div><div class='line' id='LC641'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;psi2kn <span class="o">=</span> <span class="m">1</span><span class="o">/</span>kn<span class="o">*</span>sum<span class="p">(</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span>   </div><div class='line' id='LC642'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC643'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;preavreturn <span class="o">=</span> c<span class="p">()</span></div><div class='line' id='LC644'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span> i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>ncol<span class="p">(</span>x<span class="p">)){</span></div><div class='line' id='LC645'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;preavreturn <span class="o">=</span> cbind<span class="p">(</span> preavreturn <span class="p">,</span> .hatreturn<span class="p">(</span>x<span class="p">[,</span>i<span class="p">],</span>kn<span class="p">)</span> <span class="p">)</span></div><div class='line' id='LC646'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span>       </div><div class='line' id='LC647'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC648'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S <span class="o">=</span> rCov<span class="p">(</span>preavreturn<span class="p">)</span></div><div class='line' id='LC649'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC650'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mrc <span class="o">=</span> N<span class="o">/</span><span class="p">(</span>N<span class="o">-</span>kn<span class="m">+2</span><span class="p">)</span><span class="o">*</span><span class="m">1</span><span class="o">/</span><span class="p">(</span>psi2<span class="o">*</span>kn<span class="p">)</span><span class="o">*</span>S</div><div class='line' id='LC651'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC652'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>makePsd<span class="p">)</span></div><div class='line' id='LC653'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC654'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mrc <span class="o">=</span> makePsd<span class="p">(</span>mrc<span class="p">)</span></div><div class='line' id='LC655'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC656'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC657'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC658'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC659'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>mrc<span class="p">)</span> </div><div class='line' id='LC660'><span class="p">}</span> </div><div class='line' id='LC661'><br/></div><div class='line' id='LC662'><br/></div><div class='line' id='LC663'><span class="c1">####Realized beta####</span></div><div class='line' id='LC664'><br/></div><div class='line' id='LC665'>rBeta <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">,</span> RCOVestimator<span class="o">=</span> <span class="s">&quot;rCov&quot;</span><span class="p">,</span> RVestimator<span class="o">=</span> <span class="s">&quot;RV&quot;</span><span class="p">,</span> makeReturns<span class="o">=</span> <span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC666'><span class="p">{</span></div><div class='line' id='LC667'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>hasArg<span class="p">(</span>data<span class="p">))</span> </div><div class='line' id='LC668'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC669'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> data</div><div class='line' id='LC670'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC671'>&nbsp;&nbsp;</div><div class='line' id='LC672'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>makeReturns<span class="p">)</span> </div><div class='line' id='LC673'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC674'>&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC675'>&nbsp;&nbsp;&nbsp;&nbsp;rindex<span class="o">=</span> makeReturns<span class="p">(</span>rindex<span class="p">)</span></div><div class='line' id='LC676'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC677'>&nbsp;&nbsp;</div><div class='line' id='LC678'>&nbsp;&nbsp;multixts <span class="o">=</span> highfrequency<span class="o">:::</span>.multixts<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC679'>&nbsp;&nbsp;</div><div class='line' id='LC680'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span>multixts<span class="p">)</span> </div><div class='line' id='LC681'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC682'>&nbsp;&nbsp;&nbsp;&nbsp;print<span class="p">(</span><span class="s">&quot;No support for multiple days&quot;</span><span class="p">)</span></div><div class='line' id='LC683'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC684'>&nbsp;&nbsp;<span class="kr">if</span> <span class="p">(</span><span class="o">!</span>multixts<span class="p">)</span> </div><div class='line' id='LC685'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC686'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>RCOVestimator<span class="o">==</span><span class="s">&quot;rRTSCov&quot;</span> <span class="o">|</span> RCOVestimator<span class="o">==</span><span class="s">&quot;rTSCov&quot;</span><span class="p">){</span></div><div class='line' id='LC687'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> min<span class="p">(</span>rdata<span class="p">)</span> <span class="o">&lt;</span><span class="m">0</span> <span class="p">){</span></div><div class='line' id='LC688'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print<span class="p">(</span><span class="s">&quot;when using rRTSCov, rTSCov, introduce price data - transformation to price data done&quot;</span><span class="p">)</span></div><div class='line' id='LC689'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rdata <span class="o">=</span> exp<span class="p">(</span>cumsum<span class="p">(</span>rdata<span class="p">))</span></div><div class='line' id='LC690'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC691'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> min<span class="p">(</span>rindex<span class="p">)</span> <span class="o">&lt;</span><span class="m">0</span> <span class="p">){</span></div><div class='line' id='LC692'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print<span class="p">(</span><span class="s">&quot;when using rRTSCov, rTSCov, introduce price data - transformation to price data done&quot;</span><span class="p">)</span></div><div class='line' id='LC693'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rindex <span class="o">=</span> exp<span class="p">(</span>cumsum<span class="p">(</span>rindex<span class="p">))</span></div><div class='line' id='LC694'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span>       </div><div class='line' id='LC695'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC696'>&nbsp;&nbsp;&nbsp;&nbsp;rcovfun<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">,</span> RCOVestimator<span class="p">)</span></div><div class='line' id='LC697'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC698'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>RCOVestimator<span class="p">,</span></div><div class='line' id='LC699'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rCov<span class="o">=</span> rCov<span class="p">(</span>cbind<span class="p">(</span>rdata<span class="p">,</span>rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC700'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rAVGCov<span class="o">=</span> rAVGCov<span class="p">(</span>list<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC701'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rBPCov<span class="o">=</span> rBPCov<span class="p">(</span>cbind<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC702'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rHYCov<span class="o">=</span> rHYCov<span class="p">(</span>list<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC703'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rKernelCov<span class="o">=</span> rKernelCov<span class="p">(</span>list<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC704'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rOWCov<span class="o">=</span> rOWCov<span class="p">(</span>cbind<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC705'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rRTSCov<span class="o">=</span> rRTSCov<span class="p">(</span>list<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">))[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC706'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rThresholdCov<span class="o">=</span> rThresholdCov<span class="p">(</span>cbind<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">)</span> <span class="p">)[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">],</span></div><div class='line' id='LC707'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rTSCov<span class="o">=</span> rTSCov<span class="p">(</span>list<span class="p">(</span>rdata<span class="p">,</span> rindex<span class="p">))[</span><span class="m">1</span><span class="p">,</span><span class="m">2</span><span class="p">]</span></div><div class='line' id='LC708'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC709'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC710'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC711'>&nbsp;&nbsp;&nbsp;&nbsp;rcov<span class="o">=</span> rcovfun<span class="p">(</span>rdata<span class="p">,</span>rindex<span class="p">,</span>RCOVestimator<span class="p">)</span></div><div class='line' id='LC712'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC713'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> is.null<span class="p">(</span>RVestimator<span class="p">)</span> <span class="p">){</span> RVestimator <span class="o">=</span> RCOVestimator <span class="p">}</span>  </div><div class='line' id='LC714'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC715'>&nbsp;&nbsp;&nbsp;&nbsp;rvfun<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rindex<span class="p">,</span> RVestimator<span class="p">)</span></div><div class='line' id='LC716'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC717'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC718'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>RVestimator<span class="p">,</span></div><div class='line' id='LC719'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RV<span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rindex<span class="p">),</span></div><div class='line' id='LC720'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BV<span class="o">=</span> highfrequency<span class="o">:::</span>RBPVar<span class="p">(</span>rindex<span class="p">),</span></div><div class='line' id='LC721'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minRV<span class="o">=</span> minRV<span class="p">(</span>rindex <span class="p">),</span></div><div class='line' id='LC722'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;medRV<span class="o">=</span> medRV<span class="p">(</span>rindex <span class="p">),</span></div><div class='line' id='LC723'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rCov<span class="o">=</span> rCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC724'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rAVGCov<span class="o">=</span> rAVGCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC725'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rBPCov<span class="o">=</span> rBPCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC726'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rHYCov<span class="o">=</span> rHYCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC727'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rKernelCov<span class="o">=</span> rKernelCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC728'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rOWCov<span class="o">=</span> rOWCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC729'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rRTSCov<span class="o">=</span> rRTSCov<span class="p">(</span>rindex<span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC730'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rThresholdCov<span class="o">=</span> rThresholdCov<span class="p">(</span>rindex <span class="p">)</span> <span class="p">,</span></div><div class='line' id='LC731'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rTSCov<span class="o">=</span> rTSCov<span class="p">(</span>rindex<span class="p">)</span></div><div class='line' id='LC732'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)</span>             </div><div class='line' id='LC733'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC734'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC735'>&nbsp;&nbsp;&nbsp;&nbsp;rv<span class="o">=</span>rvfun<span class="p">(</span>rindex<span class="p">,</span>RVestimator<span class="p">)</span></div><div class='line' id='LC736'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC737'>&nbsp;&nbsp;&nbsp;&nbsp;rbeta <span class="o">=</span> rcov<span class="o">/</span>rv</div><div class='line' id='LC738'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>rbeta<span class="p">)</span></div><div class='line' id='LC739'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC740'><span class="p">}</span></div><div class='line' id='LC741'><br/></div><div class='line' id='LC742'><br/></div><div class='line' id='LC743'><span class="c1">############### STANDARD ERROR OF HEAVY MODEL IMPLEMENTATION ##########</span></div><div class='line' id='LC744'><span class="c1">###########</span></div><div class='line' id='LC745'><span class="c1"># Likelihood for HEAVY volatility model of Shephard and Sheppard </span></div><div class='line' id='LC746'><span class="c1"># Code is R-translation by Jonathan Cornelissen of matlab code of http://www.kevinsheppard.com/wiki/MFE_Toolbox</span></div><div class='line' id='LC747'><span class="c1"># by: kevin.sheppard@economics.ox.ac.uk</span></div><div class='line' id='LC748'><br/></div><div class='line' id='LC749'><span class="c1"># INPUTS: </span></div><div class='line' id='LC750'><span class="c1">#   PARAMETERS  - A vector with K+sum(sum(P))+sum(sum(Q)) elements. </span></div><div class='line' id='LC751'><span class="c1">#    DATA       - A T by K vector of non-negative data.  Returns should be squared before using</span></div><div class='line' id='LC752'><span class="c1">#    P          - A K by K matrix containing the lag length of model innovations.  Position (i,j)</span></div><div class='line' id='LC753'><span class="c1">#                   indicates the number of lags of series j in the model for series i</span></div><div class='line' id='LC754'><span class="c1">#    Q          - A K by K matrix containing the lag length of conditional variances.  Position (i,j)</span></div><div class='line' id='LC755'><span class="c1">#                   indicates the number of lags of series j in the model for series i</span></div><div class='line' id='LC756'><span class="c1">#    BACKCAST   - A 1 by K matrix of values to use fo rback casting</span></div><div class='line' id='LC757'><span class="c1">#    LB         - A 1 by K matrix of volatility lower bounds to use in estimation</span></div><div class='line' id='LC758'><span class="c1">#    UB         - A 1 by K matrix of volatility upper bounds to use in estimation</span></div><div class='line' id='LC759'><span class="c1"># </span></div><div class='line' id='LC760'><span class="c1"># OUTPUTS:</span></div><div class='line' id='LC761'><span class="c1">#    LL          - The log likelihood evaluated at the PARAMETERS</span></div><div class='line' id='LC762'><span class="c1">#    LLS         - A T by 1 vector of log-likelihoods</span></div><div class='line' id='LC763'><span class="c1">#    HT          - A T by K matrix of conditional variances</span></div><div class='line' id='LC764'><br/></div><div class='line' id='LC765'><br/></div><div class='line' id='LC766'>.get_param_names <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> estparams<span class="p">,</span> p<span class="p">,</span> q<span class="p">){</span></div><div class='line' id='LC767'>&nbsp;&nbsp;K <span class="o">=</span> dim<span class="p">(</span>p<span class="p">)[</span><span class="m">2</span><span class="p">];</span></div><div class='line' id='LC768'>&nbsp;&nbsp;nAlpha <span class="o">=</span>  sum<span class="p">(</span>p<span class="p">);</span></div><div class='line' id='LC769'>&nbsp;&nbsp;nBeta  <span class="o">=</span>  sum<span class="p">(</span>q<span class="p">);</span></div><div class='line' id='LC770'>&nbsp;&nbsp;omegas <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;omega&quot;</span><span class="p">,</span><span class="m">1</span><span class="o">:</span>K<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC771'>&nbsp;&nbsp;alphas <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;alpha&quot;</span><span class="p">,</span><span class="m">1</span><span class="o">:</span>nAlpha<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC772'>&nbsp;&nbsp;betas  <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;beta&quot;</span><span class="p">,</span> <span class="m">1</span><span class="o">:</span>nBeta<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC773'>&nbsp;&nbsp;names  <span class="o">=</span> c<span class="p">(</span>omegas<span class="p">,</span>alphas<span class="p">,</span>betas<span class="p">);</span></div><div class='line' id='LC774'>&nbsp;&nbsp;</div><div class='line' id='LC775'><span class="p">}</span></div><div class='line' id='LC776'><br/></div><div class='line' id='LC777'><br/></div><div class='line' id='LC778'><span class="c1">############### INTERNAL HELP FUNCTIONS ############### </span></div><div class='line' id='LC779'><span class="c1">### thetaROWVar help functions:</span></div><div class='line' id='LC780'>.IF_MCD <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> x<span class="p">,</span> alpha <span class="p">)</span></div><div class='line' id='LC781'><span class="p">{</span></div><div class='line' id='LC782'>&nbsp;&nbsp;N <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC783'>&nbsp;&nbsp;q <span class="o">=</span> qchisq<span class="p">(</span> <span class="m">1</span><span class="o">-</span>alpha <span class="p">,</span> df <span class="o">=</span> N <span class="p">)</span></div><div class='line' id='LC784'>&nbsp;&nbsp;calpha <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="o">/</span>pchisq<span class="p">(</span> q <span class="p">,</span> df <span class="o">=</span> N<span class="m">+2</span> <span class="p">)</span></div><div class='line' id='LC785'>&nbsp;&nbsp;out <span class="o">=</span> <span class="p">(</span> <span class="p">(</span>x<span class="o">^</span><span class="m">2</span><span class="o">-</span>q<span class="p">)</span><span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span> <span class="p">)</span><span class="o">*</span><span class="p">(</span> abs<span class="p">(</span>x<span class="p">)</span> <span class="o">&lt;=</span> sqrt<span class="p">(</span>q<span class="p">)</span> <span class="p">)</span> </div><div class='line' id='LC786'>&nbsp;&nbsp;</div><div class='line' id='LC787'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span> <span class="m">-1</span><span class="o">+</span>q<span class="o">*</span>calpha <span class="o">+</span> calpha<span class="o">*</span>out <span class="p">)</span> </div><div class='line' id='LC788'><span class="p">}</span></div><div class='line' id='LC789'><br/></div><div class='line' id='LC790'><span class="c1"># .int = function(x){ </span></div><div class='line' id='LC791'><span class="c1">#   return( .IF_MCD(x)^2*dnorm(x) )</span></div><div class='line' id='LC792'><span class="c1"># }</span></div><div class='line' id='LC793'><br/></div><div class='line' id='LC794'>.avar_MCD <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>alpha<span class="p">){</span></div><div class='line' id='LC795'>&nbsp;&nbsp;N <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC796'>&nbsp;&nbsp;q_alpha <span class="o">=</span> qchisq<span class="p">(</span> <span class="m">1</span><span class="o">-</span>alpha <span class="p">,</span> df <span class="o">=</span> N <span class="p">)</span></div><div class='line' id='LC797'>&nbsp;&nbsp;c_alpha <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="o">/</span>pchisq<span class="p">(</span> q_alpha <span class="p">,</span> df <span class="o">=</span> N<span class="m">+2</span> <span class="p">)</span></div><div class='line' id='LC798'>&nbsp;&nbsp;a_alpha <span class="o">=</span> <span class="m">-2</span><span class="o">*</span>sqrt<span class="p">(</span>q_alpha<span class="p">)</span><span class="o">*</span>dnorm<span class="p">(</span>sqrt<span class="p">(</span>q_alpha<span class="p">))</span><span class="m">+1</span><span class="o">-</span>alpha</div><div class='line' id='LC799'>&nbsp;&nbsp;b_alpha <span class="o">=</span> <span class="m">-2</span><span class="o">*</span>q_alpha<span class="o">^</span><span class="p">(</span><span class="m">3</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>dnorm<span class="p">(</span>sqrt<span class="p">(</span>q_alpha<span class="p">))</span><span class="m">+3</span><span class="o">*</span>a_alpha</div><div class='line' id='LC800'>&nbsp;&nbsp;</div><div class='line' id='LC801'>&nbsp;&nbsp;avar <span class="o">=</span> c_alpha<span class="o">^</span><span class="m">2</span><span class="o">*</span>q_alpha<span class="o">^</span><span class="m">2+1-2</span><span class="o">*</span>c_alpha<span class="o">*</span>q_alpha</div><div class='line' id='LC802'>&nbsp;&nbsp;avar <span class="o">=</span> avar <span class="o">+</span> c_alpha<span class="o">^</span><span class="m">2</span><span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="o">*</span><span class="p">(</span>b_alpha<span class="o">+</span>q_alpha<span class="o">^</span><span class="m">2</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="m">-2</span><span class="o">*</span>q_alpha<span class="o">*</span>a_alpha<span class="p">)</span></div><div class='line' id='LC803'>&nbsp;&nbsp;avar <span class="o">=</span> avar <span class="o">+</span> <span class="m">2</span><span class="o">*</span><span class="p">(</span> c_alpha<span class="o">*</span>q_alpha <span class="o">-</span> <span class="m">1</span><span class="p">)</span><span class="o">*</span>c_alpha<span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">))</span><span class="o">*</span><span class="p">(</span><span class="o">-</span>q_alpha<span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="o">+</span>a_alpha<span class="p">)</span> </div><div class='line' id='LC804'>&nbsp;&nbsp;</div><div class='line' id='LC805'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>avar<span class="p">)</span></div><div class='line' id='LC806'><span class="p">}</span></div><div class='line' id='LC807'><br/></div><div class='line' id='LC808'><br/></div><div class='line' id='LC809'><span class="c1">### ivInference help functions:</span></div><div class='line' id='LC810'><span class="c1">##IQ estimator: </span></div><div class='line' id='LC811'>.hatiq <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span>IQestimator<span class="p">)</span></div><div class='line' id='LC812'><span class="p">{</span></div><div class='line' id='LC813'>&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>IQestimator<span class="p">,</span></div><div class='line' id='LC814'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rQuar  <span class="o">=</span> rQuar <span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC815'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QP     <span class="o">=</span> rQPVar<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC816'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TP     <span class="o">=</span> rTPVar<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC817'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minRQ  <span class="o">=</span> minRQ <span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC818'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;medRQ  <span class="o">=</span> medRQ <span class="p">(</span>rdata<span class="p">))</span></div><div class='line' id='LC819'><span class="p">}</span></div><div class='line' id='LC820'><br/></div><div class='line' id='LC821'><br/></div><div class='line' id='LC822'><span class="c1">##Standard error of IVestimator: </span></div><div class='line' id='LC823'><span class="c1"># Reference can be found at: Andersen, T. G., D. Dobrev, and E. Schaumburg (2012). </span></div><div class='line' id='LC824'><span class="c1">#Jump-robust volatility estimation using nearest neighbor truncation. Journal of Econometrics, 169(1), 75- 93.</span></div><div class='line' id='LC825'><br/></div><div class='line' id='LC826'>.IV<span class="o">=</span><span class="kr">function</span><span class="p">(</span>IVestimator<span class="p">,</span>iq<span class="p">)</span></div><div class='line' id='LC827'><span class="p">{</span></div><div class='line' id='LC828'>&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>IVestimator<span class="p">,</span></div><div class='line' id='LC829'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RV<span class="o">=</span> sqrt<span class="p">(</span><span class="m">2</span><span class="o">*</span>iq<span class="p">),</span></div><div class='line' id='LC830'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BV<span class="o">=</span> sqrt<span class="p">(</span><span class="m">2.61</span><span class="o">*</span>iq<span class="p">),</span></div><div class='line' id='LC831'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TV<span class="o">=</span> sqrt<span class="p">(</span><span class="m">3.06</span><span class="o">*</span>iq<span class="p">),</span></div><div class='line' id='LC832'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minRV<span class="o">=</span> sqrt<span class="p">(</span><span class="m">3.81</span><span class="o">*</span>iq<span class="p">),</span></div><div class='line' id='LC833'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;medRV<span class="o">=</span> sqrt<span class="p">(</span><span class="m">2.96</span><span class="o">*</span>iq<span class="p">))</span></div><div class='line' id='LC834'><span class="p">}</span></div><div class='line' id='LC835'><br/></div><div class='line' id='LC836'><br/></div><div class='line' id='LC837'><span class="c1">### AJjumptest help functions:</span></div><div class='line' id='LC838'><span class="c1">## scale</span></div><div class='line' id='LC839'>.scale <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>align.by<span class="p">){</span></div><div class='line' id='LC840'>&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>align.by<span class="p">,</span></div><div class='line' id='LC841'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;seconds&quot;</span><span class="o">=</span> as.numeric<span class="p">(</span><span class="m">1</span><span class="p">),</span></div><div class='line' id='LC842'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;minutes&quot;</span><span class="o">=</span> as.numeric<span class="p">(</span><span class="m">60</span><span class="p">),</span></div><div class='line' id='LC843'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;hours&quot;</span><span class="o">=</span> as.numeric<span class="p">(</span><span class="m">3600</span><span class="p">))</span></div><div class='line' id='LC844'><span class="p">}</span></div><div class='line' id='LC845'><br/></div><div class='line' id='LC846'><br/></div><div class='line' id='LC847'><span class="c1">## mukp: to use when p,k different from range [4,6]</span></div><div class='line' id='LC848'>.mukp<span class="o">=</span><span class="kr">function</span><span class="p">(</span>p<span class="p">,</span>k<span class="p">,</span> <span class="k-Variable">T</span><span class="o">=</span><span class="m">1000000</span><span class="p">)</span></div><div class='line' id='LC849'><span class="p">{</span></div><div class='line' id='LC850'>&nbsp;&nbsp;p <span class="o">=</span> as.numeric<span class="p">(</span>p<span class="p">)</span></div><div class='line' id='LC851'>&nbsp;&nbsp;k <span class="o">=</span> as.numeric<span class="p">(</span>k<span class="p">)</span></div><div class='line' id='LC852'>&nbsp;&nbsp;</div><div class='line' id='LC853'>&nbsp;&nbsp;U <span class="o">=</span> rnorm<span class="p">(</span><span class="k-Variable">T</span><span class="p">)</span></div><div class='line' id='LC854'>&nbsp;&nbsp;Y <span class="o">=</span> rnorm<span class="p">(</span><span class="k-Variable">T</span><span class="p">)</span></div><div class='line' id='LC855'>&nbsp;&nbsp;absU <span class="o">=</span> abs<span class="p">(</span>U<span class="p">)</span></div><div class='line' id='LC856'>&nbsp;&nbsp;mukp <span class="o">=</span> mean<span class="p">((</span>absU<span class="o">^</span>p<span class="p">)</span><span class="o">*</span><span class="p">(</span>abs<span class="p">(</span>U <span class="o">+</span>sqrt<span class="p">(</span>k<span class="m">-1</span><span class="p">)</span><span class="o">*</span>Y<span class="p">))</span><span class="o">^</span>p<span class="p">)</span> </div><div class='line' id='LC857'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>mukp<span class="p">)</span></div><div class='line' id='LC858'><span class="p">}</span></div><div class='line' id='LC859'><br/></div><div class='line' id='LC860'><span class="c1">##fmupk: to use to calculate mupk in the function of the author. </span></div><div class='line' id='LC861'>.fmupk <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>p<span class="p">,</span>k<span class="p">){</span></div><div class='line' id='LC862'>&nbsp;&nbsp;mupk <span class="o">=</span> <span class="kc">NULL</span><span class="p">;</span></div><div class='line' id='LC863'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>p<span class="o">==</span><span class="m">2</span><span class="p">){</span></div><div class='line' id='LC864'>&nbsp;&nbsp;&nbsp;&nbsp;mupk <span class="o">=</span> <span class="kr">switch</span><span class="p">(</span>as.character<span class="p">(</span>k<span class="p">),</span></div><div class='line' id='LC865'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;2&quot;</span> <span class="o">=</span> <span class="m">4.00</span><span class="p">,</span></div><div class='line' id='LC866'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;3&quot;</span> <span class="o">=</span> <span class="m">5.00</span><span class="p">,</span></div><div class='line' id='LC867'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;4&quot;</span> <span class="o">=</span> <span class="m">6.00</span><span class="p">)</span></div><div class='line' id='LC868'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC869'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>p<span class="o">==</span><span class="m">3</span><span class="p">){</span></div><div class='line' id='LC870'>&nbsp;&nbsp;&nbsp;&nbsp;mupk <span class="o">=</span> <span class="kr">switch</span><span class="p">(</span>as.character<span class="p">(</span>k<span class="p">),</span></div><div class='line' id='LC871'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;2&quot;</span> <span class="o">=</span> <span class="m">24.07</span><span class="p">,</span></div><div class='line' id='LC872'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;3&quot;</span> <span class="o">=</span> <span class="m">33.63</span><span class="p">,</span></div><div class='line' id='LC873'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;4&quot;</span> <span class="o">=</span> <span class="m">43.74</span><span class="p">)</span></div><div class='line' id='LC874'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC875'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>p<span class="o">==</span><span class="m">4</span><span class="p">){</span></div><div class='line' id='LC876'>&nbsp;&nbsp;&nbsp;&nbsp;mupk <span class="o">=</span> <span class="kr">switch</span><span class="p">(</span>as.character<span class="p">(</span>k<span class="p">),</span></div><div class='line' id='LC877'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;2&quot;</span> <span class="o">=</span> <span class="m">204.04</span><span class="p">,</span></div><div class='line' id='LC878'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;3&quot;</span> <span class="o">=</span> <span class="m">320.26</span><span class="p">,</span></div><div class='line' id='LC879'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;4&quot;</span> <span class="o">=</span> <span class="m">455.67</span><span class="p">)</span></div><div class='line' id='LC880'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC881'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>is.null<span class="p">(</span>mupk<span class="p">)){</span></div><div class='line' id='LC882'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># reduce simulation error by taking large T and large nrep</span></div><div class='line' id='LC883'>&nbsp;&nbsp;&nbsp;&nbsp;nrep <span class="o">=</span> <span class="m">100</span><span class="p">;</span></div><div class='line' id='LC884'>&nbsp;&nbsp;&nbsp;&nbsp;vmupk <span class="o">=</span> rep<span class="p">(</span><span class="kc">NA</span><span class="p">,</span>times<span class="o">=</span> nrep<span class="p">)</span></div><div class='line' id='LC885'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC886'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span> i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>nrep<span class="p">){</span></div><div class='line' id='LC887'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vmupk<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span> .mukp<span class="p">(</span>p<span class="p">,</span>k<span class="p">,</span><span class="k-Variable">T</span><span class="o">=</span><span class="m">1000000</span><span class="p">)</span>  </div><div class='line' id='LC888'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC889'>&nbsp;&nbsp;&nbsp;&nbsp;mupk <span class="o">=</span> round<span class="p">(</span>mean<span class="p">(</span>vmupk<span class="p">),</span><span class="m">2</span><span class="p">)</span>    </div><div class='line' id='LC890'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC891'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>mupk<span class="p">)</span></div><div class='line' id='LC892'><span class="p">}</span></div><div class='line' id='LC893'><br/></div><div class='line' id='LC894'>.Npk <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>p<span class="p">,</span>k<span class="p">){</span></div><div class='line' id='LC895'>&nbsp;&nbsp;mup<span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span>p<span class="m">+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC896'>&nbsp;&nbsp;mu2p<span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">((</span><span class="m">2</span><span class="o">*</span>p<span class="p">)</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">((</span><span class="m">2</span><span class="o">*</span>p<span class="p">)</span><span class="m">+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span>      </div><div class='line' id='LC897'>&nbsp;&nbsp;npk<span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">/</span>mup<span class="o">^</span><span class="m">2</span><span class="p">)</span><span class="o">*</span><span class="p">(</span>k<span class="o">^</span><span class="p">(</span>p<span class="m">-2</span><span class="p">)</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">+</span>k<span class="p">))</span><span class="o">*</span>mu2p <span class="o">+</span> k<span class="o">^</span><span class="p">(</span>p<span class="m">-2</span><span class="p">)</span><span class="o">*</span><span class="p">(</span>k<span class="m">-1</span><span class="p">)</span><span class="o">*</span>mup<span class="o">^</span><span class="m">2-2</span><span class="o">*</span>k<span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2-1</span><span class="p">)</span><span class="o">*</span>.fmupk<span class="p">(</span>p<span class="p">,</span>k<span class="p">)</span></div><div class='line' id='LC898'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>npk<span class="p">)</span></div><div class='line' id='LC899'><span class="p">}</span></div><div class='line' id='LC900'><br/></div><div class='line' id='LC901'>.V <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rse<span class="p">,</span>p<span class="p">,</span>k<span class="p">,</span>N<span class="p">){</span></div><div class='line' id='LC902'>&nbsp;&nbsp;mup <span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span>p<span class="m">+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC903'>&nbsp;&nbsp;muhalfp <span class="o">=</span> <span class="m">2</span><span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">4</span><span class="p">)</span><span class="o">*</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="o">*</span><span class="p">(</span>p<span class="o">/</span><span class="m">2+1</span><span class="p">))</span><span class="o">/</span>gamma<span class="p">(</span><span class="m">1</span><span class="o">/</span><span class="m">2</span><span class="p">)</span></div><div class='line' id='LC904'>&nbsp;&nbsp;A2p <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">/</span>N<span class="p">)</span><span class="o">^</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>p<span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">/</span>mup<span class="o">*</span>sum<span class="p">(</span>rse<span class="o">^</span>p<span class="p">)</span></div><div class='line' id='LC905'>&nbsp;&nbsp;Ap <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">/</span>N<span class="p">)</span><span class="o">^</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>p<span class="o">/</span><span class="m">4</span><span class="p">)</span><span class="o">/</span>muhalfp<span class="o">*</span>sum<span class="p">(</span>rse<span class="o">^</span><span class="p">(</span>p<span class="o">/</span><span class="m">2</span><span class="p">))</span>   <span class="c1">##check formula  </span></div><div class='line' id='LC906'>&nbsp;&nbsp;</div><div class='line' id='LC907'>&nbsp;&nbsp;V <span class="o">=</span> .Npk<span class="p">(</span>p<span class="p">,</span>k<span class="p">)</span> <span class="o">*</span>A2p<span class="o">/</span><span class="p">(</span>N<span class="o">*</span>Ap<span class="p">)</span> <span class="c1">##check formula: A(p), A(2p)</span></div><div class='line' id='LC908'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>V<span class="p">)</span></div><div class='line' id='LC909'><span class="p">}</span> </div><div class='line' id='LC910'><br/></div><div class='line' id='LC911'><span class="c1">## BNSJumptest help functions:</span></div><div class='line' id='LC912'><br/></div><div class='line' id='LC913'><span class="c1">## zgamma function: </span></div><div class='line' id='LC914'>.zgamma <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">,</span>y<span class="p">){</span></div><div class='line' id='LC915'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>x<span class="o">^</span><span class="m">2</span><span class="o">&lt;</span>y<span class="p">)</span></div><div class='line' id='LC916'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC917'>&nbsp;&nbsp;&nbsp;&nbsp;out <span class="o">=</span> abs<span class="p">(</span>x<span class="p">)</span></div><div class='line' id='LC918'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC919'>&nbsp;&nbsp;<span class="kr">else</span><span class="p">(</span>out<span class="o">=</span><span class="m">1.094</span><span class="o">*</span>sqrt<span class="p">(</span>y<span class="p">))</span>  <span class="c1">##1.094: estimated by the article</span></div><div class='line' id='LC920'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC921'><span class="p">}</span></div><div class='line' id='LC922'><br/></div><div class='line' id='LC923'><span class="c1">##corrected threshold bipower variation: </span></div><div class='line' id='LC924'>.ctBV <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>rdata<span class="p">,</span> startV <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> N<span class="p">){</span></div><div class='line' id='LC925'>&nbsp;&nbsp;q <span class="o">=</span> as.numeric<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC926'>&nbsp;&nbsp;</div><div class='line' id='LC927'>&nbsp;&nbsp;<span class="c1">## hatV</span></div><div class='line' id='LC928'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>is.null<span class="p">(</span>startV<span class="p">))</span></div><div class='line' id='LC929'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC930'>&nbsp;&nbsp;&nbsp;&nbsp;hatV <span class="o">=</span> medRV<span class="p">(</span>rdata<span class="p">)</span></div><div class='line' id='LC931'>&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span> hatV <span class="o">=</span> startV <span class="p">}</span></div><div class='line' id='LC932'>&nbsp;&nbsp;</div><div class='line' id='LC933'>&nbsp;&nbsp;v  <span class="o">=</span> <span class="m">3</span><span class="o">^</span><span class="m">2</span><span class="o">*</span>hatV</div><div class='line' id='LC934'>&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">2</span><span class="o">:</span>N<span class="p">)</span></div><div class='line' id='LC935'>&nbsp;&nbsp;<span class="p">{</span>z1 <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>N<span class="m">-1</span><span class="p">)</span></div><div class='line' id='LC936'>&nbsp;&nbsp;&nbsp;z1<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span>  .zgamma<span class="p">(</span>rdata<span class="p">[</span>i<span class="p">],</span>v<span class="p">)</span>  <span class="c1">##check formula TODO</span></div><div class='line' id='LC937'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC938'>&nbsp;&nbsp;</div><div class='line' id='LC939'>&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="p">(</span>N<span class="m">-1</span><span class="p">))</span></div><div class='line' id='LC940'>&nbsp;&nbsp;<span class="p">{</span>z2 <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>N<span class="m">-1</span><span class="p">)</span></div><div class='line' id='LC941'>&nbsp;&nbsp;&nbsp;z2<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span>  .zgamma<span class="p">(</span>rdata<span class="p">[</span>j<span class="p">],</span>v<span class="p">)</span> <span class="c1">##check formula TODO </span></div><div class='line' id='LC942'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC943'>&nbsp;&nbsp;ctbv<span class="o">=</span> <span class="p">(</span>pi<span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>z1<span class="o">*</span>z2<span class="p">)</span></div><div class='line' id='LC944'>&nbsp;&nbsp;</div><div class='line' id='LC945'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>ctbv<span class="p">)</span></div><div class='line' id='LC946'><span class="p">}</span></div><div class='line' id='LC947'><br/></div><div class='line' id='LC948'><span class="c1">## hatIV</span></div><div class='line' id='LC949'>.hativ <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> rdata<span class="p">,</span> IVestimator<span class="p">,</span> startV <span class="o">=</span> <span class="kc">NULL</span><span class="p">,</span> N<span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC950'><span class="p">{</span></div><div class='line' id='LC951'>&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>IVestimator<span class="p">,</span></div><div class='line' id='LC952'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RV     <span class="o">=</span> highfrequency<span class="o">:::</span>RV<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC953'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BV     <span class="o">=</span> highfrequency<span class="o">:::</span>RBPVar<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC954'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TV     <span class="o">=</span> rTPVar<span class="p">(</span>rdata<span class="p">),</span>         </div><div class='line' id='LC955'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minRV  <span class="o">=</span> minRV<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC956'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;medRV  <span class="o">=</span> medRV<span class="p">(</span>rdata<span class="p">),</span></div><div class='line' id='LC957'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROWvar <span class="o">=</span> rOWCov<span class="p">(</span>rdata<span class="p">,</span><span class="kc">...</span><span class="p">),</span></div><div class='line' id='LC958'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CTBV   <span class="o">=</span> .ctBV<span class="p">(</span>rdata<span class="p">,</span> N<span class="p">,</span><span class="kc">...</span><span class="p">))</span></div><div class='line' id='LC959'><span class="p">}</span></div><div class='line' id='LC960'><br/></div><div class='line' id='LC961'><br/></div><div class='line' id='LC962'>.tt <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>IVestimator<span class="p">,</span><span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC963'><span class="p">{</span></div><div class='line' id='LC964'>&nbsp;&nbsp;<span class="kr">switch</span><span class="p">(</span>IVestimator<span class="p">,</span></div><div class='line' id='LC965'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BV<span class="o">=</span> <span class="m">2.61</span><span class="p">,</span></div><div class='line' id='LC966'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minRV<span class="o">=</span> <span class="m">3.81</span><span class="p">,</span></div><div class='line' id='LC967'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;medRV<span class="o">=</span> <span class="m">2.96</span><span class="p">,</span></div><div class='line' id='LC968'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROWVar <span class="o">=</span> .thetaROWVar<span class="p">())</span></div><div class='line' id='LC969'><span class="p">}</span></div><div class='line' id='LC970'><br/></div><div class='line' id='LC971'>.thetaROWVar <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> alpha <span class="o">=</span> <span class="m">0.001</span> <span class="p">,</span> alphaMCD <span class="o">=</span> <span class="m">0.5</span> <span class="p">)</span></div><div class='line' id='LC972'><span class="p">{</span></div><div class='line' id='LC973'>&nbsp;&nbsp;N <span class="o">=</span> <span class="m">1</span><span class="p">;</span>  </div><div class='line' id='LC974'>&nbsp;&nbsp;q_alpha <span class="o">=</span> qchisq<span class="p">(</span> <span class="m">1</span><span class="o">-</span>alpha <span class="p">,</span> df <span class="o">=</span> N <span class="p">);</span>  </div><div class='line' id='LC975'>&nbsp;&nbsp;c_alpha <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span><span class="o">/</span>pchisq<span class="p">(</span> q_alpha <span class="p">,</span> df <span class="o">=</span> N<span class="m">+2</span> <span class="p">);</span>  </div><div class='line' id='LC976'>&nbsp;&nbsp;a_alpha <span class="o">=</span> <span class="m">-2</span><span class="o">*</span>sqrt<span class="p">(</span>q_alpha<span class="p">)</span><span class="o">*</span>dnorm<span class="p">(</span>sqrt<span class="p">(</span>q_alpha<span class="p">))</span><span class="m">+1</span><span class="o">-</span>alpha<span class="p">;</span>  </div><div class='line' id='LC977'>&nbsp;&nbsp;b_alpha <span class="o">=</span> <span class="m">-2</span><span class="o">*</span>q_alpha<span class="o">^</span><span class="p">(</span><span class="m">3</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>dnorm<span class="p">(</span>sqrt<span class="p">(</span>q_alpha<span class="p">))</span><span class="m">+3</span><span class="o">*</span>a_alpha<span class="p">;</span></div><div class='line' id='LC978'>&nbsp;&nbsp;</div><div class='line' id='LC979'>&nbsp;&nbsp;k <span class="o">=</span> qchisq<span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">,</span> df<span class="o">=</span> <span class="m">1</span><span class="p">);</span> <span class="c1">#TODO GIANG ## suggestion in the article.</span></div><div class='line' id='LC980'>&nbsp;&nbsp;halfk <span class="o">=</span> sqrt<span class="p">(</span>k<span class="p">);</span> halfq <span class="o">=</span> sqrt<span class="p">(</span>q_alpha<span class="p">)</span> </div><div class='line' id='LC981'>&nbsp;&nbsp;</div><div class='line' id='LC982'>&nbsp;&nbsp;Ewu2   <span class="o">=</span> <span class="m">2</span><span class="o">*</span>pnorm<span class="p">(</span>halfk<span class="p">)</span><span class="m">-1</span><span class="p">;</span></div><div class='line' id='LC983'>&nbsp;&nbsp;Ewu2u2 <span class="o">=</span> <span class="m">-2</span><span class="o">*</span>halfk<span class="o">*</span>dnorm<span class="p">(</span>halfk<span class="p">)</span><span class="o">+</span>Ewu2<span class="p">;</span></div><div class='line' id='LC984'>&nbsp;&nbsp;Ewu2u4 <span class="o">=</span> <span class="m">-2</span><span class="o">*</span><span class="p">(</span>k<span class="o">^</span><span class="p">(</span><span class="m">3</span><span class="o">/</span><span class="m">2</span><span class="p">))</span><span class="o">*</span>dnorm<span class="p">(</span>halfk<span class="p">)</span><span class="m">+3</span><span class="o">*</span>Ewu2u2<span class="p">;</span></div><div class='line' id='LC985'>&nbsp;&nbsp;</div><div class='line' id='LC986'>&nbsp;&nbsp;Ewu2u2IF <span class="o">=</span> <span class="p">(</span><span class="m">-1</span><span class="o">+</span>c_alpha<span class="o">*</span>q_alpha<span class="o">-</span><span class="p">(</span>c_alpha<span class="o">*</span>q_alpha<span class="p">)</span><span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">))</span><span class="o">*</span>a_alpha<span class="o">+</span>c_alpha<span class="o">*</span>b_alpha<span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span></div><div class='line' id='LC987'>&nbsp;&nbsp;Ewu2u2IF <span class="o">=</span> Ewu2u2IF <span class="o">+</span> <span class="m">2</span><span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>c_alpha<span class="o">*</span>q_alpha<span class="p">)</span><span class="o">*</span><span class="p">(</span></div><div class='line' id='LC988'>&nbsp;&nbsp;&nbsp;&nbsp;halfk<span class="o">*</span>dnorm<span class="p">(</span>halfk<span class="p">)</span><span class="o">-</span>halfq<span class="o">*</span>dnorm<span class="p">(</span>halfq<span class="p">)</span> <span class="o">+</span> <span class="m">1</span> <span class="o">-</span> alpha<span class="o">/</span><span class="m">2</span> <span class="o">-</span> pnorm<span class="p">(</span>halfk<span class="p">)</span>   <span class="p">)</span></div><div class='line' id='LC989'>&nbsp;&nbsp;Ewu2IF <span class="o">=</span> <span class="p">(</span>alpha<span class="m">-1</span><span class="o">-</span>c_alpha<span class="o">*</span>q_alpha<span class="o">*</span>alpha<span class="p">)</span> <span class="o">+</span> c_alpha<span class="o">*</span>a_alpha<span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="p">)</span> <span class="o">+</span> <span class="m">2</span><span class="o">*</span><span class="p">(</span>c_alpha<span class="o">*</span>q_alpha<span class="m">-1</span><span class="p">)</span><span class="o">*</span><span class="p">(</span> pnorm<span class="p">(</span>halfk<span class="p">)</span><span class="o">-</span><span class="p">(</span><span class="m">1</span><span class="o">-</span>alpha<span class="o">/</span><span class="m">2</span><span class="p">))</span></div><div class='line' id='LC990'>&nbsp;&nbsp;Ederwu2u4 <span class="o">=</span> <span class="o">-</span>k<span class="o">^</span><span class="p">(</span><span class="m">3</span><span class="o">/</span><span class="m">2</span><span class="p">)</span><span class="o">*</span>dnorm<span class="p">(</span>halfk<span class="p">);</span></div><div class='line' id='LC991'>&nbsp;&nbsp;Ederwu2u2 <span class="o">=</span> <span class="o">-</span>halfk<span class="o">*</span>dnorm<span class="p">(</span>halfk<span class="p">);</span></div><div class='line' id='LC992'>&nbsp;&nbsp;c1 <span class="o">=</span> <span class="m">1</span><span class="o">/</span>Ewu2u2<span class="p">;</span>   c2 <span class="o">=</span> <span class="m">1</span><span class="o">/</span>Ewu2<span class="p">;</span>   c3 <span class="o">=</span> c2<span class="o">*</span>Ederwu2u2<span class="o">-</span>c1<span class="o">*</span>Ederwu2u4</div><div class='line' id='LC993'>&nbsp;&nbsp;Avar0 <span class="o">=</span> .avar_MCD<span class="p">(</span>alpha<span class="p">)</span></div><div class='line' id='LC994'>&nbsp;&nbsp;theta <span class="o">=</span> c3<span class="o">^</span><span class="m">2</span><span class="o">*</span>Avar0 <span class="o">+</span> c1<span class="o">^</span><span class="m">2</span><span class="o">*</span>Ewu2u4 <span class="o">+</span> c2<span class="o">^</span><span class="m">2</span><span class="o">*</span>Ewu2 <span class="o">-</span> <span class="m">2</span><span class="o">*</span>c1<span class="o">*</span>c2<span class="o">*</span>Ewu2u2<span class="p">;</span></div><div class='line' id='LC995'>&nbsp;&nbsp;theta <span class="o">=</span> theta <span class="o">+</span> <span class="m">2</span><span class="o">*</span>c3<span class="o">*</span><span class="p">(</span> c1<span class="o">*</span>Ewu2u2IF<span class="o">-</span>c2<span class="o">*</span>Ewu2IF <span class="p">);</span></div><div class='line' id='LC996'>&nbsp;&nbsp;</div><div class='line' id='LC997'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span> theta <span class="p">);</span></div><div class='line' id='LC998'><span class="p">}</span></div><div class='line' id='LC999'><br/></div><div class='line' id='LC1000'><span class="c1">#Function to calculate simple returns#</span></div><div class='line' id='LC1001'>.simre<span class="o">=</span><span class="kr">function</span> <span class="p">(</span>pdata<span class="p">)</span> </div><div class='line' id='LC1002'><span class="p">{</span></div><div class='line' id='LC1003'>&nbsp;&nbsp;l <span class="o">=</span> dim<span class="p">(</span>pdata<span class="p">)[</span><span class="m">1</span><span class="p">]</span></div><div class='line' id='LC1004'>&nbsp;&nbsp;x <span class="o">=</span> matrix<span class="p">(</span>as.numeric<span class="p">(</span>pdata<span class="p">),</span> nrow <span class="o">=</span> l<span class="p">)</span></div><div class='line' id='LC1005'>&nbsp;&nbsp;x<span class="p">[(</span><span class="m">2</span><span class="o">:</span>l<span class="p">),</span> <span class="p">]</span> <span class="o">=</span> x<span class="p">[(</span><span class="m">2</span><span class="o">:</span>l<span class="p">),</span> <span class="p">]</span><span class="o">/</span>x<span class="p">[(</span><span class="m">1</span><span class="o">:</span><span class="p">(</span>l <span class="o">-</span> <span class="m">1</span><span class="p">)),</span> <span class="p">]</span><span class="m">-1</span></div><div class='line' id='LC1006'>&nbsp;&nbsp;x<span class="p">[</span><span class="m">1</span><span class="p">,</span> <span class="p">]</span> <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> dim<span class="p">(</span>pdata<span class="p">)[</span><span class="m">2</span><span class="p">])</span></div><div class='line' id='LC1007'>&nbsp;&nbsp;x <span class="o">=</span> xts<span class="p">(</span>x<span class="p">,</span> order.by <span class="o">=</span> index<span class="p">(</span>pdata<span class="p">))</span></div><div class='line' id='LC1008'><span class="p">}</span></div><div class='line' id='LC1009'><br/></div><div class='line' id='LC1010'><br/></div><div class='line' id='LC1011'><span class="c1">####INTERNAL FUNCTIONS OF PREAVERAGING####</span></div><div class='line' id='LC1012'><span class="c1">##Preaverage return: </span></div><div class='line' id='LC1013'>.hatreturn<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>pdata<span class="p">,</span>kn<span class="p">)</span></div><div class='line' id='LC1014'><span class="p">{</span></div><div class='line' id='LC1015'>&nbsp;&nbsp;rdata<span class="o">=</span>makeReturns<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC1016'>&nbsp;&nbsp;kn<span class="o">=</span>as.numeric<span class="p">(</span>kn<span class="p">)</span></div><div class='line' id='LC1017'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>kn <span class="o">==</span> <span class="m">1</span><span class="p">){</span> hatre <span class="o">=</span> rdata<span class="p">}</span></div><div class='line' id='LC1018'>&nbsp;&nbsp;<span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC1019'>&nbsp;&nbsp;&nbsp;&nbsp;x <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">:</span><span class="p">(</span>kn<span class="m">-1</span><span class="p">)</span> <span class="p">)</span><span class="o">/</span>kn</div><div class='line' id='LC1020'>&nbsp;&nbsp;&nbsp;&nbsp;x<span class="p">[</span>x <span class="o">&gt;</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)]</span> <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)[</span>x <span class="o">&gt;</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)]</span>   </div><div class='line' id='LC1021'>&nbsp;&nbsp;&nbsp;&nbsp;weightedsum <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>series<span class="p">){</span> <span class="kr">return</span><span class="p">(</span> sum<span class="p">(</span>x<span class="o">*</span>series<span class="p">)</span> <span class="p">)}</span></div><div class='line' id='LC1022'>&nbsp;&nbsp;&nbsp;&nbsp;hatre <span class="o">=</span> rollapply<span class="p">(</span>rdata<span class="p">,</span>width <span class="o">=</span> kn<span class="m">-1</span><span class="p">,</span> FUN <span class="o">=</span> weightedsum<span class="p">,</span> align <span class="o">=</span> <span class="s">&quot;left&quot;</span><span class="p">)</span>   </div><div class='line' id='LC1023'>&nbsp;&nbsp;&nbsp;&nbsp;hatre<span class="p">[</span>is.na<span class="p">(</span>hatre<span class="p">)]</span> <span class="o">=</span> rdata<span class="p">[</span>is.na<span class="p">(</span>hatre<span class="p">)]</span></div><div class='line' id='LC1024'>&nbsp;&nbsp;<span class="p">}</span>  </div><div class='line' id='LC1025'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>hatre<span class="p">)</span>  </div><div class='line' id='LC1026'><span class="p">}</span></div><div class='line' id='LC1027'><br/></div><div class='line' id='LC1028'><span class="c1">##gfunction:</span></div><div class='line' id='LC1029'>.gfunction <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">)</span></div><div class='line' id='LC1030'><span class="p">{</span></div><div class='line' id='LC1031'>&nbsp;&nbsp;<span class="c1"># returns the minimum of x and 1-x</span></div><div class='line' id='LC1032'>&nbsp;&nbsp;<span class="c1"># whenevr x &gt; 1-x , replace with 1-x</span></div><div class='line' id='LC1033'>&nbsp;&nbsp;x<span class="p">[</span>x <span class="o">&gt;</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)]</span> <span class="o">=</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)[</span>x <span class="o">&gt;</span> <span class="p">(</span><span class="m">1</span><span class="o">-</span>x<span class="p">)]</span> </div><div class='line' id='LC1034'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>x<span class="p">)</span></div><div class='line' id='LC1035'>&nbsp;&nbsp;</div><div class='line' id='LC1036'><span class="p">}</span></div><div class='line' id='LC1037'><br/></div><div class='line' id='LC1038'><span class="c1">#r#Univariate estimation:</span></div><div class='line' id='LC1039'>.crv<span class="o">=</span><span class="kr">function</span><span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC1040'><span class="p">{</span></div><div class='line' id='LC1041'>&nbsp;&nbsp;N<span class="o">=</span> nrow<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC1042'>&nbsp;&nbsp;theta<span class="o">=</span> <span class="m">0.8</span> <span class="c1">##recommendation by Hautsch and Podolskij</span></div><div class='line' id='LC1043'>&nbsp;&nbsp;kn<span class="o">=</span> floor<span class="p">(</span>theta<span class="o">*</span>sqrt<span class="p">(</span>N<span class="p">))</span>  </div><div class='line' id='LC1044'>&nbsp;&nbsp;</div><div class='line' id='LC1045'>&nbsp;&nbsp;<span class="c1">##psi:</span></div><div class='line' id='LC1046'>&nbsp;&nbsp;psi1 <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC1047'>&nbsp;&nbsp;psi2 <span class="o">=</span> <span class="m">1</span><span class="o">/</span><span class="m">12</span></div><div class='line' id='LC1048'>&nbsp;&nbsp;</div><div class='line' id='LC1049'>&nbsp;&nbsp;psi1kn <span class="o">=</span> kn<span class="o">*</span> sum<span class="p">((</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span> <span class="o">-</span> .gfunction<span class="p">((</span> <span class="p">(</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span> <span class="o">-</span> <span class="m">1</span> <span class="p">)</span><span class="o">/</span>kn <span class="p">)</span> <span class="p">)</span><span class="o">^</span><span class="m">2</span> <span class="p">)</span></div><div class='line' id='LC1050'>&nbsp;&nbsp;</div><div class='line' id='LC1051'>&nbsp;&nbsp;psi2kn <span class="o">=</span> <span class="m">1</span><span class="o">/</span>kn<span class="o">*</span>sum<span class="p">(</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span> </div><div class='line' id='LC1052'>&nbsp;&nbsp;</div><div class='line' id='LC1053'>&nbsp;&nbsp;r1 <span class="o">=</span> .hatreturn<span class="p">(</span>pdata<span class="p">,</span>kn<span class="o">=</span>kn<span class="p">)</span></div><div class='line' id='LC1054'>&nbsp;&nbsp;rdata <span class="o">=</span> makeReturns<span class="p">(</span>pdata<span class="p">)</span></div><div class='line' id='LC1055'>&nbsp;&nbsp;crv <span class="o">=</span> <span class="m">1</span><span class="o">/</span><span class="p">(</span>sqrt<span class="p">(</span>N<span class="p">)</span><span class="o">*</span>theta<span class="o">*</span>psi2kn<span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>r1<span class="o">^</span><span class="m">2</span><span class="p">,</span>na.rm<span class="o">=</span><span class="kc">TRUE</span><span class="p">)</span> <span class="o">-</span> psi1kn<span class="o">*</span><span class="p">(</span><span class="m">1</span><span class="o">/</span>N<span class="p">)</span><span class="o">/</span><span class="p">(</span><span class="m">2</span><span class="o">*</span>theta<span class="o">^</span><span class="m">2</span><span class="o">*</span>psi2kn<span class="p">)</span><span class="o">*</span>sum<span class="p">(</span>rdata<span class="o">^</span><span class="m">2</span><span class="p">,</span>na.rm<span class="o">=</span><span class="kc">TRUE</span><span class="p">)</span></div><div class='line' id='LC1056'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>crv<span class="p">)</span></div><div class='line' id='LC1057'><span class="p">}</span></div><div class='line' id='LC1058'><br/></div><div class='line' id='LC1059'><span class="c1">##preav_bi</span></div><div class='line' id='LC1060'>.preav_bi<span class="o">=</span> <span class="kr">function</span><span class="p">(</span>pdata1<span class="p">,</span> pdata2<span class="p">)</span></div><div class='line' id='LC1061'><span class="p">{</span></div><div class='line' id='LC1062'>&nbsp;&nbsp;x <span class="o">=</span> refreshTime<span class="p">(</span>list<span class="p">(</span>pdata1<span class="p">,</span> pdata2<span class="p">))</span></div><div class='line' id='LC1063'>&nbsp;&nbsp;newprice1 <span class="o">=</span> x<span class="p">[,</span> <span class="m">1</span><span class="p">]</span></div><div class='line' id='LC1064'>&nbsp;&nbsp;newprice2 <span class="o">=</span> x<span class="p">[,</span> <span class="m">2</span><span class="p">]</span>  </div><div class='line' id='LC1065'>&nbsp;&nbsp;</div><div class='line' id='LC1066'>&nbsp;&nbsp;N <span class="o">=</span> nrow<span class="p">(</span>x<span class="p">)</span></div><div class='line' id='LC1067'>&nbsp;&nbsp;theta <span class="o">=</span> <span class="m">0.8</span> <span class="c1">##recommendation by Hautsch and Podolskij</span></div><div class='line' id='LC1068'>&nbsp;&nbsp;kn <span class="o">=</span> floor<span class="p">(</span>theta<span class="o">*</span>sqrt<span class="p">(</span>N<span class="p">))</span>  </div><div class='line' id='LC1069'>&nbsp;&nbsp;</div><div class='line' id='LC1070'>&nbsp;&nbsp;<span class="c1">##psi:</span></div><div class='line' id='LC1071'>&nbsp;&nbsp;psi1 <span class="o">=</span> <span class="m">1</span></div><div class='line' id='LC1072'>&nbsp;&nbsp;psi2 <span class="o">=</span> <span class="m">1</span><span class="o">/</span><span class="m">12</span></div><div class='line' id='LC1073'>&nbsp;&nbsp;</div><div class='line' id='LC1074'>&nbsp;&nbsp;psi1kn <span class="o">=</span> kn<span class="o">*</span> sum<span class="p">((</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span> <span class="o">-</span> .gfunction<span class="p">((</span> <span class="p">(</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span> <span class="o">-</span> <span class="m">1</span> <span class="p">)</span><span class="o">/</span>kn <span class="p">)</span> <span class="p">)</span><span class="o">^</span><span class="m">2</span> <span class="p">)</span></div><div class='line' id='LC1075'>&nbsp;&nbsp;</div><div class='line' id='LC1076'>&nbsp;&nbsp;psi2kn <span class="o">=</span> <span class="m">1</span><span class="o">/</span>kn<span class="o">*</span>sum<span class="p">(</span>.gfunction<span class="p">((</span><span class="m">1</span><span class="o">:</span>kn<span class="p">)</span><span class="o">/</span>kn<span class="p">)</span><span class="o">^</span><span class="m">2</span><span class="p">)</span>   </div><div class='line' id='LC1077'>&nbsp;&nbsp;</div><div class='line' id='LC1078'>&nbsp;&nbsp;r1 <span class="o">=</span> .hatreturn<span class="p">(</span>newprice1<span class="p">,</span>kn<span class="o">=</span>kn<span class="p">)</span></div><div class='line' id='LC1079'>&nbsp;&nbsp;r2 <span class="o">=</span> .hatreturn<span class="p">(</span>newprice2<span class="p">,</span>kn<span class="o">=</span>kn<span class="p">)</span></div><div class='line' id='LC1080'>&nbsp;&nbsp;</div><div class='line' id='LC1081'>&nbsp;&nbsp;mrc <span class="o">=</span> N<span class="o">/</span><span class="p">(</span>N<span class="o">-</span>kn<span class="m">+2</span><span class="p">)</span><span class="o">*</span><span class="m">1</span><span class="o">/</span><span class="p">(</span>psi2<span class="o">*</span>kn<span class="p">)</span><span class="o">*</span><span class="p">(</span>sum<span class="p">(</span>r1<span class="o">*</span>r2<span class="p">,</span>na.rm<span class="o">=</span><span class="kc">TRUE</span><span class="p">))</span></div><div class='line' id='LC1082'>&nbsp;&nbsp;</div><div class='line' id='LC1083'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>mrc<span class="p">)</span></div><div class='line' id='LC1084'><span class="p">}</span></div><div class='line' id='LC1085'><br/></div><div class='line' id='LC1086'><span class="c1">### Standard error of HEAVY model: </span></div><div class='line' id='LC1087'><span class="c1">## INPUT: </span></div><div class='line' id='LC1088'><span class="c1"># - rpara, rmpara: vectors of parameters: omega, alpha and beta of demeaned returns and realized measures from heavyModel. </span></div><div class='line' id='LC1089'><span class="c1"># - lR, lRM: function of log-likelihood from heavyModel;</span></div><div class='line' id='LC1090'><span class="c1"># Note: numDeriv package is required. </span></div><div class='line' id='LC1091'><span class="c1">## OUTPUT: standard error of parameters calculated from log-likelihood heavyModel.</span></div><div class='line' id='LC1092'><br/></div><div class='line' id='LC1093'><br/></div><div class='line' id='LC1094'>.transformparams <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> p<span class="p">,</span> q<span class="p">,</span> par <span class="p">){</span></div><div class='line' id='LC1095'>&nbsp;&nbsp;K <span class="o">=</span> dim<span class="p">(</span>p<span class="p">)[</span><span class="m">1</span><span class="p">];</span> </div><div class='line' id='LC1096'>&nbsp;&nbsp;pmax <span class="o">=</span> max<span class="p">(</span>p<span class="p">);</span> qmax <span class="o">=</span> max<span class="p">(</span>q<span class="p">);</span> <span class="c1"># Max number of lags for innovations and cond vars</span></div><div class='line' id='LC1097'>&nbsp;&nbsp;</div><div class='line' id='LC1098'>&nbsp;&nbsp;O <span class="o">=</span> matrix<span class="p">(</span> par<span class="p">[</span><span class="m">1</span><span class="o">:</span>K<span class="p">],</span> ncol<span class="o">=</span><span class="m">1</span><span class="p">);</span></div><div class='line' id='LC1099'>&nbsp;&nbsp;A <span class="o">=</span> B <span class="o">=</span> list<span class="p">();</span></div><div class='line' id='LC1100'>&nbsp;&nbsp;start <span class="o">=</span> <span class="p">(</span>K<span class="m">+1</span><span class="p">);</span> </div><div class='line' id='LC1101'>&nbsp;&nbsp;</div><div class='line' id='LC1102'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>pmax<span class="p">){</span>    <span class="c1"># A will contain a list-item per innovation lag</span></div><div class='line' id='LC1103'>&nbsp;&nbsp;&nbsp;&nbsp;end <span class="o">=</span>          start <span class="o">+</span> sum<span class="p">(</span>p<span class="o">&gt;=</span>i<span class="p">)</span> <span class="o">-</span> <span class="m">1</span><span class="p">;</span> <span class="c1"># How many non-zero params in this loop?</span></div><div class='line' id='LC1104'>&nbsp;&nbsp;&nbsp;&nbsp;A<span class="p">[[</span>i<span class="p">]]</span> <span class="o">=</span>       matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol<span class="o">=</span><span class="m">2</span><span class="p">);</span> </div><div class='line' id='LC1105'>&nbsp;&nbsp;&nbsp;&nbsp;A<span class="p">[[</span>i<span class="p">]][</span>p<span class="o">&gt;=</span>i<span class="p">]</span> <span class="o">=</span> par<span class="p">[</span>start<span class="o">:</span>end<span class="p">];</span></div><div class='line' id='LC1106'>&nbsp;&nbsp;&nbsp;&nbsp;start  <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span><span class="p">;</span>   </div><div class='line' id='LC1107'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#end loop over number of lags for innovations</span></div><div class='line' id='LC1108'>&nbsp;&nbsp;</div><div class='line' id='LC1109'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>qmax<span class="p">){</span>   <span class="c1"># B will contain a list-item per cond var lag</span></div><div class='line' id='LC1110'>&nbsp;&nbsp;&nbsp;&nbsp;end   <span class="o">=</span> start <span class="o">+</span> sum<span class="p">(</span>q<span class="o">&gt;=</span>i<span class="p">)</span> <span class="m">-1</span><span class="p">;</span> <span class="c1"># How many non-zero params in this loop?</span></div><div class='line' id='LC1111'>&nbsp;&nbsp;&nbsp;&nbsp;B<span class="p">[[</span>i<span class="p">]]</span> <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol<span class="o">=</span><span class="m">2</span><span class="p">);</span> </div><div class='line' id='LC1112'>&nbsp;&nbsp;&nbsp;&nbsp;B<span class="p">[[</span>i<span class="p">]][</span>q <span class="o">&gt;=</span> i<span class="p">]</span> <span class="o">=</span> par<span class="p">[</span>start<span class="o">:</span>end<span class="p">];</span></div><div class='line' id='LC1113'>&nbsp;&nbsp;&nbsp;&nbsp;start  <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span><span class="p">;</span>   </div><div class='line' id='LC1114'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#End loop over number of lags for cond variances</span></div><div class='line' id='LC1115'>&nbsp;&nbsp;</div><div class='line' id='LC1116'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span> list<span class="p">(</span>O<span class="p">,</span>A<span class="p">,</span>B<span class="p">)</span> <span class="p">)</span> </div><div class='line' id='LC1117'><span class="p">}</span>  </div><div class='line' id='LC1118'><br/></div><div class='line' id='LC1119'>.transtosplit <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>paramsvector<span class="p">,</span>p<span class="p">,</span>q<span class="p">){</span></div><div class='line' id='LC1120'>&nbsp;&nbsp;<span class="c1"># K is the number of equations in the heavy model</span></div><div class='line' id='LC1121'>&nbsp;&nbsp;</div><div class='line' id='LC1122'>&nbsp;&nbsp;<span class="c1"># paramsvector is the vector of paramaters ordered as follows:</span></div><div class='line' id='LC1123'>&nbsp;&nbsp;<span class="c1"># First the estimates for omega then the estimates for the non-zero alpha&#39;s with the most recent lags first in case max(p) &gt; 1, </span></div><div class='line' id='LC1124'>&nbsp;&nbsp;<span class="c1"># then the estimates for the non-zero beta&#39;s with the most recent lag first in case max(q) &gt; 1.</span></div><div class='line' id='LC1125'>&nbsp;&nbsp;</div><div class='line' id='LC1126'>&nbsp;&nbsp;<span class="c1"># splittedparams is the vector of parameters ordered by equation</span></div><div class='line' id='LC1127'>&nbsp;&nbsp;<span class="c1"># first the omega, alphas and betas of the first equation</span></div><div class='line' id='LC1128'>&nbsp;&nbsp;<span class="c1"># then the second equation </span></div><div class='line' id='LC1129'>&nbsp;&nbsp;<span class="c1"># and so on</span></div><div class='line' id='LC1130'>&nbsp;&nbsp;</div><div class='line' id='LC1131'>&nbsp;&nbsp;<span class="c1"># determine a list with two outputs: list element one is the splittesparamsvectors </span></div><div class='line' id='LC1132'>&nbsp;&nbsp;<span class="c1"># and list element two is vk such that vk[i] is the number of parameters of equation i in the heavy model</span></div><div class='line' id='LC1133'>&nbsp;&nbsp;</div><div class='line' id='LC1134'>&nbsp;&nbsp;<span class="c1"># clarify omega, alpha and beta: </span></div><div class='line' id='LC1135'>&nbsp;&nbsp;K <span class="o">=</span> nrow<span class="p">(</span>p<span class="p">)[</span><span class="m">1</span><span class="p">]</span></div><div class='line' id='LC1136'>&nbsp;&nbsp;</div><div class='line' id='LC1137'>&nbsp;&nbsp;<span class="c1"># intercept paramaters</span></div><div class='line' id='LC1138'>&nbsp;&nbsp;vo     <span class="o">=</span> paramsvector<span class="p">[</span><span class="m">1</span><span class="o">:</span>K<span class="p">]</span></div><div class='line' id='LC1139'>&nbsp;&nbsp;<span class="c1"># data paramaters</span></div><div class='line' id='LC1140'>&nbsp;&nbsp;pmax <span class="o">=</span> max<span class="p">(</span>p<span class="p">);</span> qmax <span class="o">=</span> max<span class="p">(</span>q<span class="p">);</span> <span class="c1"># Max number of lags for innovations and cond vars</span></div><div class='line' id='LC1141'>&nbsp;&nbsp;mA <span class="o">=</span> mB <span class="o">=</span> c<span class="p">();</span></div><div class='line' id='LC1142'>&nbsp;&nbsp;start <span class="o">=</span> <span class="p">(</span>K<span class="m">+1</span><span class="p">);</span> </div><div class='line' id='LC1143'>&nbsp;&nbsp;</div><div class='line' id='LC1144'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>pmax<span class="p">){</span>    <span class="c1"># A will contain a list-item per innovation lag</span></div><div class='line' id='LC1145'>&nbsp;&nbsp;&nbsp;&nbsp;end      <span class="o">=</span> start <span class="o">+</span> sum<span class="p">(</span>p<span class="o">&gt;=</span>i<span class="p">)</span> <span class="o">-</span> <span class="m">1</span><span class="p">;</span> <span class="c1"># How many non-zero params in this loop?</span></div><div class='line' id='LC1146'>&nbsp;&nbsp;&nbsp;&nbsp;Ai       <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="kc">NA</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol<span class="o">=</span>K<span class="p">);</span> </div><div class='line' id='LC1147'>&nbsp;&nbsp;&nbsp;&nbsp;Ai<span class="p">[</span>p<span class="o">&gt;=</span>i<span class="p">]</span> <span class="o">=</span> paramsvector<span class="p">[</span>start<span class="o">:</span>end<span class="p">];</span></div><div class='line' id='LC1148'>&nbsp;&nbsp;&nbsp;&nbsp;mA       <span class="o">=</span> cbind<span class="p">(</span>mA<span class="p">,</span>Ai<span class="p">)</span></div><div class='line' id='LC1149'>&nbsp;&nbsp;&nbsp;&nbsp;start    <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span><span class="p">;</span>   </div><div class='line' id='LC1150'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#end loop over number of lags for innovations</span></div><div class='line' id='LC1151'>&nbsp;&nbsp;</div><div class='line' id='LC1152'>&nbsp;&nbsp;</div><div class='line' id='LC1153'>&nbsp;&nbsp;<span class="c1"># autoregressive term parameters</span></div><div class='line' id='LC1154'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>qmax<span class="p">){</span>   <span class="c1"># B will contain a list-item per cond var lag</span></div><div class='line' id='LC1155'>&nbsp;&nbsp;&nbsp;&nbsp;end      <span class="o">=</span> start <span class="o">+</span> sum<span class="p">(</span>q<span class="o">&gt;=</span>i<span class="p">)</span> <span class="m">-1</span><span class="p">;</span> <span class="c1"># How many non-zero params in this loop?</span></div><div class='line' id='LC1156'>&nbsp;&nbsp;&nbsp;&nbsp;Bi       <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="kc">NA</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol <span class="o">=</span> K<span class="p">);</span> </div><div class='line' id='LC1157'>&nbsp;&nbsp;&nbsp;&nbsp;Bi<span class="p">[</span>q<span class="o">&gt;=</span>i<span class="p">]</span> <span class="o">=</span> paramsvector<span class="p">[</span>start<span class="o">:</span>end<span class="p">];</span></div><div class='line' id='LC1158'>&nbsp;&nbsp;&nbsp;&nbsp;mB       <span class="o">=</span> cbind<span class="p">(</span>mB<span class="p">,</span>Bi<span class="p">)</span></div><div class='line' id='LC1159'>&nbsp;&nbsp;&nbsp;&nbsp;start    <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span><span class="p">;</span>   </div><div class='line' id='LC1160'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#End loop over number of lags for cond variances  </span></div><div class='line' id='LC1161'>&nbsp;&nbsp;</div><div class='line' id='LC1162'>&nbsp;&nbsp;all <span class="o">=</span> cbind<span class="p">(</span>vo <span class="p">,</span> mA <span class="p">,</span> mB<span class="p">)</span></div><div class='line' id='LC1163'>&nbsp;&nbsp;tall <span class="o">=</span> t<span class="p">(</span>all<span class="p">)</span> </div><div class='line' id='LC1164'>&nbsp;&nbsp;theta <span class="o">=</span> tall<span class="p">[</span><span class="o">!</span>is.na<span class="p">(</span>tall<span class="p">)]</span></div><div class='line' id='LC1165'>&nbsp;&nbsp;</div><div class='line' id='LC1166'>&nbsp;&nbsp;vk <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> K<span class="p">)</span></div><div class='line' id='LC1167'>&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span> K<span class="p">)</span></div><div class='line' id='LC1168'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1169'>&nbsp;&nbsp;&nbsp;&nbsp;vk<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span> <span class="m">1</span> <span class="o">+</span> sum<span class="p">(</span>p<span class="p">[</span>i<span class="p">,])</span> <span class="o">+</span> sum<span class="p">(</span>q<span class="p">[</span>i<span class="p">,])</span></div><div class='line' id='LC1170'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1171'>&nbsp;&nbsp;</div><div class='line' id='LC1172'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>list<span class="p">(</span>theta<span class="p">,</span>vk<span class="p">))</span></div><div class='line' id='LC1173'><span class="p">}</span></div><div class='line' id='LC1174'><br/></div><div class='line' id='LC1175'>.transtopar <span class="o">=</span> <span class="kr">function</span><span class="p">(</span>theta<span class="p">,</span> p<span class="p">,</span> q<span class="p">){</span></div><div class='line' id='LC1176'>&nbsp;&nbsp;</div><div class='line' id='LC1177'>&nbsp;&nbsp;K <span class="o">=</span> nrow<span class="p">(</span>p<span class="p">);</span></div><div class='line' id='LC1178'>&nbsp;&nbsp;maxp <span class="o">=</span> max<span class="p">(</span>p<span class="p">);</span></div><div class='line' id='LC1179'>&nbsp;&nbsp;maxq <span class="o">=</span> max<span class="p">(</span>q<span class="p">);</span></div><div class='line' id='LC1180'>&nbsp;&nbsp;</div><div class='line' id='LC1181'>&nbsp;&nbsp;<span class="c1"># Determine vk: </span></div><div class='line' id='LC1182'>&nbsp;&nbsp;vk <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> K<span class="p">);</span></div><div class='line' id='LC1183'>&nbsp;&nbsp;</div><div class='line' id='LC1184'>&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span> K<span class="p">)</span></div><div class='line' id='LC1185'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1186'>&nbsp;&nbsp;&nbsp;&nbsp;vk<span class="p">[</span>i<span class="p">]</span> <span class="o">=</span> <span class="m">1</span> <span class="o">+</span> sum<span class="p">(</span>p<span class="p">[</span>i<span class="p">,</span> <span class="p">])</span> <span class="o">+</span> sum<span class="p">(</span>q<span class="p">[</span>i<span class="p">,</span> <span class="p">])</span></div><div class='line' id='LC1187'>&nbsp;&nbsp;<span class="p">}</span> </div><div class='line' id='LC1188'>&nbsp;&nbsp;</div><div class='line' id='LC1189'>&nbsp;&nbsp;<span class="c1"># matrix O</span></div><div class='line' id='LC1190'>&nbsp;&nbsp;vo <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">1</span><span class="p">,</span>K<span class="p">),</span>ncol<span class="o">=</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC1191'>&nbsp;&nbsp;</div><div class='line' id='LC1192'>&nbsp;&nbsp;<span class="c1"># matrix A, B</span></div><div class='line' id='LC1193'>&nbsp;&nbsp;</div><div class='line' id='LC1194'>&nbsp;&nbsp;mA <span class="o">=</span> mB <span class="o">=</span> c<span class="p">();</span></div><div class='line' id='LC1195'>&nbsp;&nbsp;</div><div class='line' id='LC1196'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>maxp<span class="p">){</span>    <span class="c1"># A will contain a list-item per innovation lag</span></div><div class='line' id='LC1197'>&nbsp;&nbsp;&nbsp;&nbsp;Ai       <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol<span class="o">=</span>K<span class="p">);</span> </div><div class='line' id='LC1198'>&nbsp;&nbsp;&nbsp;&nbsp;Ai<span class="p">[</span>p<span class="o">&gt;=</span>i<span class="p">]</span> <span class="o">=</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1199'>&nbsp;&nbsp;&nbsp;&nbsp;mA       <span class="o">=</span> cbind<span class="p">(</span>mA<span class="p">,</span>Ai<span class="p">)</span></div><div class='line' id='LC1200'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#end loop over number of lags for innovations</span></div><div class='line' id='LC1201'>&nbsp;&nbsp;</div><div class='line' id='LC1202'>&nbsp;&nbsp;</div><div class='line' id='LC1203'>&nbsp;&nbsp;<span class="c1"># autoregressive term parameters</span></div><div class='line' id='LC1204'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>maxq<span class="p">){</span>   <span class="c1"># B will contain a list-item per cond var lag</span></div><div class='line' id='LC1205'>&nbsp;&nbsp;&nbsp;&nbsp;Bi       <span class="o">=</span> matrix<span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="o">^</span><span class="m">2</span><span class="p">),</span>ncol <span class="o">=</span> K<span class="p">);</span> </div><div class='line' id='LC1206'>&nbsp;&nbsp;&nbsp;&nbsp;Bi<span class="p">[</span>q<span class="o">&gt;=</span>i<span class="p">]</span> <span class="o">=</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1207'>&nbsp;&nbsp;&nbsp;&nbsp;mB       <span class="o">=</span> cbind<span class="p">(</span>mB<span class="p">,</span>Bi<span class="p">)</span></div><div class='line' id='LC1208'>&nbsp;&nbsp;<span class="p">}</span><span class="c1">#End loop over number of lags for cond variances  </span></div><div class='line' id='LC1209'>&nbsp;&nbsp;</div><div class='line' id='LC1210'>&nbsp;&nbsp;<span class="c1"># Merge vO,mA, mB</span></div><div class='line' id='LC1211'>&nbsp;&nbsp;all <span class="o">=</span> matrix<span class="p">(</span>cbind<span class="p">(</span>vo <span class="p">,</span> mA <span class="p">,</span> mB<span class="p">),</span>nrow<span class="o">=</span>K<span class="p">)</span></div><div class='line' id='LC1212'>&nbsp;&nbsp;</div><div class='line' id='LC1213'>&nbsp;&nbsp;nma<span class="o">=</span> ncol<span class="p">(</span>all<span class="p">);</span></div><div class='line' id='LC1214'>&nbsp;&nbsp;start <span class="o">=</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1215'>&nbsp;&nbsp;</div><div class='line' id='LC1216'>&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">)</span></div><div class='line' id='LC1217'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1218'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>nma<span class="p">)</span></div><div class='line' id='LC1219'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>all<span class="p">[</span>i<span class="p">,</span>j<span class="p">]</span> <span class="o">==</span> <span class="m">1</span><span class="p">)</span> <span class="p">{</span>all<span class="p">[</span>i<span class="p">,</span>j<span class="p">]</span> <span class="o">=</span> theta<span class="p">[</span>start<span class="p">]}</span> </div><div class='line' id='LC1221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">else</span> <span class="p">{</span></div><div class='line' id='LC1222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;all<span class="p">[</span>i<span class="p">,</span>j<span class="p">]</span> <span class="o">=</span> <span class="kc">NA</span><span class="p">;</span></div><div class='line' id='LC1223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">next</span><span class="p">};</span></div><div class='line' id='LC1224'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> start<span class="m">+1</span></div><div class='line' id='LC1225'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1226'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1227'>&nbsp;&nbsp;</div><div class='line' id='LC1228'>&nbsp;&nbsp;params <span class="o">=</span> all<span class="p">[</span><span class="o">!</span>is.na<span class="p">(</span>all<span class="p">)]</span></div><div class='line' id='LC1229'>&nbsp;&nbsp;</div><div class='line' id='LC1230'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>params<span class="p">)</span></div><div class='line' id='LC1231'>&nbsp;&nbsp;</div><div class='line' id='LC1232'><span class="p">}</span></div><div class='line' id='LC1233'><br/></div><div class='line' id='LC1234'>.heavy_likelihood <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> par<span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> foroptim<span class="o">=</span><span class="kc">TRUE</span><span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span> <span class="p">){</span> </div><div class='line' id='LC1235'>&nbsp;&nbsp;<span class="c1"># Get the required variables</span></div><div class='line' id='LC1236'>&nbsp;&nbsp;<span class="c1"># p is Max number of lags for innovations </span></div><div class='line' id='LC1237'>&nbsp;&nbsp;<span class="c1"># q is Max number of lags for conditional variances</span></div><div class='line' id='LC1238'>&nbsp;&nbsp;K    <span class="o">=</span> dim<span class="p">(</span>data<span class="p">)[</span><span class="m">2</span><span class="p">];</span>  <span class="c1">#Number of series to model</span></div><div class='line' id='LC1239'>&nbsp;&nbsp;<span class="k-Variable">T</span>    <span class="o">=</span> dim<span class="p">(</span>data<span class="p">)[</span><span class="m">1</span><span class="p">];</span>  <span class="c1">#Number of time periods</span></div><div class='line' id='LC1240'>&nbsp;&nbsp;lls  <span class="o">=</span> rep<span class="p">(</span><span class="kc">NA</span><span class="p">,</span><span class="k-Variable">T</span><span class="p">);</span>     <span class="c1">#Vector containing the likelihoods</span></div><div class='line' id='LC1241'>&nbsp;&nbsp;h    <span class="o">=</span> matrix<span class="p">(</span>nrow<span class="o">=</span>K<span class="p">,</span>ncol<span class="o">=</span><span class="k-Variable">T</span><span class="p">);</span> <span class="c1">#Matrix to containing conditional variances</span></div><div class='line' id='LC1242'>&nbsp;&nbsp;maxp <span class="o">=</span> max<span class="p">(</span>p<span class="p">);</span> maxq<span class="o">=</span>max<span class="p">(</span>q<span class="p">);</span></div><div class='line' id='LC1243'>&nbsp;&nbsp;</div><div class='line' id='LC1244'>&nbsp;&nbsp;<span class="c1"># Get the parameters:</span></div><div class='line' id='LC1245'>&nbsp;&nbsp;x <span class="o">=</span> .transformparams<span class="p">(</span> par<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q <span class="p">);</span></div><div class='line' id='LC1246'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> compconst <span class="p">){</span> O <span class="o">=</span> x<span class="p">[[</span><span class="m">1</span><span class="p">]];</span> <span class="p">}</span> </div><div class='line' id='LC1247'>&nbsp;&nbsp;A <span class="o">=</span> x<span class="p">[[</span><span class="m">2</span><span class="p">]];</span> B <span class="o">=</span> x<span class="p">[[</span><span class="m">3</span><span class="p">]];</span> </div><div class='line' id='LC1248'>&nbsp;&nbsp;<span class="c1"># Compute constant in case it needn&#39;t to be optimized:</span></div><div class='line' id='LC1249'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> <span class="o">!</span>compconst <span class="p">){</span> <span class="c1"># Don&#39;t compute the omega&#39;s but do (1-alpha-beta)*unconditional</span></div><div class='line' id='LC1250'>&nbsp;&nbsp;&nbsp;&nbsp;totalA <span class="o">=</span> totalB <span class="o">=</span> matrix<span class="p">(</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="p">)</span> <span class="p">,</span>ncol<span class="o">=</span><span class="m">1</span><span class="p">,</span>nrow<span class="o">=</span>K<span class="p">);</span></div><div class='line' id='LC1251'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>length<span class="p">(</span>A<span class="p">)</span> <span class="p">){</span> totalA <span class="o">=</span> totalA <span class="o">+</span> t<span class="p">(</span>t<span class="p">(</span>rowSums<span class="p">(</span>A<span class="p">[[</span>j<span class="p">]])));</span> <span class="p">}</span> <span class="c1"># Sum over alphas for all models</span></div><div class='line' id='LC1252'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>length<span class="p">(</span>B<span class="p">)</span> <span class="p">){</span> totalB <span class="o">=</span> totalB <span class="o">+</span> t<span class="p">(</span>t<span class="p">(</span>rowSums<span class="p">(</span>B<span class="p">[[</span>j<span class="p">]])));</span> <span class="p">}</span> <span class="c1"># Sum over betas for all models</span></div><div class='line' id='LC1253'>&nbsp;&nbsp;&nbsp;&nbsp;O <span class="o">=</span> <span class="m">1</span> <span class="o">-</span> totalA <span class="o">-</span> totalB<span class="p">;</span> <span class="c1"># The remaing weight after substracting A &amp; B</span></div><div class='line' id='LC1254'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Calculate the unconditionals</span></div><div class='line' id='LC1255'>&nbsp;&nbsp;&nbsp;&nbsp;uncond <span class="o">=</span> t<span class="p">(</span>t<span class="p">(</span>colMeans<span class="p">(</span>data<span class="p">)));</span></div><div class='line' id='LC1256'>&nbsp;&nbsp;&nbsp;&nbsp;O <span class="o">=</span> O<span class="o">*</span>uncond<span class="p">;</span></div><div class='line' id='LC1257'>&nbsp;&nbsp;<span class="p">}</span> <span class="c1">#End if close for not optimizing over omega  </span></div><div class='line' id='LC1258'>&nbsp;&nbsp;</div><div class='line' id='LC1259'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> sum<span class="p">(</span>O<span class="p">)</span> <span class="o">&lt;</span> <span class="m">0</span> <span class="p">){</span> O<span class="p">[</span>O<span class="o">&lt;</span><span class="m">0</span><span class="p">]</span> <span class="o">=</span> <span class="m">10</span><span class="o">^</span><span class="p">(</span><span class="m">-10</span><span class="p">)}</span> <span class="c1">#params here are shouldn&#39;t be smaller than zero</span></div><div class='line' id='LC1260'>&nbsp;&nbsp;</div><div class='line' id='LC1261'>&nbsp;&nbsp;likConst <span class="o">=</span> K<span class="o">*</span>log<span class="p">(</span><span class="m">2</span><span class="o">*</span>pi<span class="p">);</span> <span class="c1">#constant for loglikelihood</span></div><div class='line' id='LC1262'>&nbsp;&nbsp;</div><div class='line' id='LC1263'>&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>t <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="k-Variable">T</span><span class="p">){</span> <span class="c1"># Start loop over time periods</span></div><div class='line' id='LC1264'>&nbsp;&nbsp;&nbsp;&nbsp;h<span class="p">[,</span>t<span class="p">]</span> <span class="o">=</span> O<span class="p">;</span>    <span class="c1">#Add constant to h</span></div><div class='line' id='LC1265'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1266'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>maxp<span class="p">){</span><span class="c1"># Loop over innovation lags</span></div><div class='line' id='LC1267'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> <span class="p">(</span>t<span class="o">-</span>j<span class="p">)</span> <span class="o">&gt;</span> <span class="m">0</span> <span class="p">){</span> </div><div class='line' id='LC1268'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h<span class="p">[,</span>t<span class="p">]</span> <span class="o">=</span> h<span class="p">[,</span>t<span class="p">]</span> <span class="o">+</span> t<span class="p">(</span> A<span class="p">[[</span>j<span class="p">]]</span> <span class="o">%*%</span> t<span class="p">(</span>data<span class="p">[(</span>t<span class="o">-</span>j<span class="p">),])</span> <span class="p">);</span> <span class="c1">#Adding innovations to h        </span></div><div class='line' id='LC1269'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span> </div><div class='line' id='LC1270'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h<span class="p">[,</span>t<span class="p">]</span> <span class="o">=</span> h<span class="p">[,</span>t<span class="p">]</span> <span class="o">+</span> t<span class="p">(</span> A<span class="p">[[</span>j<span class="p">]]</span> <span class="o">%*%</span> backcast <span class="p">);</span> <span class="c1">#Adding innovations to h          </span></div><div class='line' id='LC1271'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1272'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="c1">#end loop over innovation lags # CHECK: error caution????</span></div><div class='line' id='LC1273'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1274'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>maxp<span class="p">){</span><span class="c1"># Loop over cond variances lags</span></div><div class='line' id='LC1275'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> <span class="p">(</span>t<span class="o">-</span>j<span class="p">)</span> <span class="o">&gt;</span> <span class="m">0</span> <span class="p">){</span> </div><div class='line' id='LC1276'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h<span class="p">[,</span>t<span class="p">]</span> <span class="o">=</span> h<span class="p">[,</span>t<span class="p">]</span> <span class="o">+</span> t<span class="p">(</span> B<span class="p">[[</span>j<span class="p">]]</span> <span class="o">%*%</span> t<span class="p">(</span>t<span class="p">(</span>h<span class="p">[,(</span>t<span class="o">-</span>j<span class="p">)]))</span> <span class="p">);</span> <span class="c1">#Adding cond vars to h </span></div><div class='line' id='LC1277'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span> </div><div class='line' id='LC1278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;h<span class="p">[,</span>t<span class="p">]</span> <span class="o">=</span> h<span class="p">[,</span>t<span class="p">]</span> <span class="o">+</span> t<span class="p">(</span> B<span class="p">[[</span>j<span class="p">]]</span> <span class="o">%*%</span> backcast <span class="p">);</span> <span class="c1">#Adding cond vars to h          </span></div><div class='line' id='LC1279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1280'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="c1">#End loop over innovation lags</span></div><div class='line' id='LC1281'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1282'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> any<span class="p">(</span> h<span class="p">[,</span>t<span class="p">]</span><span class="o">&gt;</span><span class="m">1e3</span> <span class="p">)){</span> <span class="kr">break</span> <span class="p">;}</span></div><div class='line' id='LC1283'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Check whether h&#39;s are between LB and UB:      </span></div><div class='line' id='LC1284'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">){</span> <span class="c1">#Loop over </span></div><div class='line' id='LC1285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">&lt;</span> LB<span class="p">[</span>j<span class="p">]</span> <span class="p">){</span>  h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">=</span> LB<span class="p">[</span>j<span class="p">]</span><span class="o">/</span><span class="p">(</span><span class="m">1</span><span class="o">-</span> <span class="p">(</span>h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">-</span> LB<span class="p">[</span>j<span class="p">])</span> <span class="p">);}</span></div><div class='line' id='LC1286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">&gt;</span> UB<span class="p">[</span>j<span class="p">]</span> <span class="p">){</span>  h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">=</span> UB<span class="p">[</span>j<span class="p">]</span> <span class="o">+</span> log<span class="p">(</span> h<span class="p">[</span>j<span class="p">,</span>t<span class="p">]</span> <span class="o">-</span> UB<span class="p">[</span>j<span class="p">]);}</span></div><div class='line' id='LC1287'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="c1">#end loop over series</span></div><div class='line' id='LC1288'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1289'>&nbsp;&nbsp;&nbsp;&nbsp;lls<span class="p">[</span>t<span class="p">]</span> <span class="o">=</span> <span class="m">0.5</span><span class="o">*</span><span class="p">(</span> likConst <span class="o">+</span> sum<span class="p">(</span> log<span class="p">(</span>h<span class="p">[,</span>t<span class="p">])</span> <span class="p">)</span> <span class="o">+</span> sum<span class="p">(</span> data<span class="p">[</span>t<span class="p">,]</span> <span class="o">/</span> h<span class="p">[,</span>t<span class="p">]</span> <span class="p">)</span> <span class="p">);</span>            </div><div class='line' id='LC1290'>&nbsp;&nbsp;<span class="p">}</span> <span class="c1">#End loop over days</span></div><div class='line' id='LC1291'>&nbsp;&nbsp;ll <span class="o">=</span> sum<span class="p">(</span>lls<span class="p">);</span></div><div class='line' id='LC1292'>&nbsp;&nbsp;</div><div class='line' id='LC1293'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>is.na<span class="p">(</span>ll<span class="p">)</span> <span class="o">||</span> is.infinite<span class="p">(</span>ll<span class="p">)</span> <span class="p">){</span>  ll <span class="o">=</span> <span class="m">10</span><span class="o">^</span><span class="m">7</span> <span class="p">}</span> </div><div class='line' id='LC1294'>&nbsp;&nbsp;</div><div class='line' id='LC1295'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>foroptim<span class="p">){</span>   output <span class="o">=</span> ll<span class="p">;</span> <span class="kr">return</span><span class="p">(</span>output<span class="p">);</span> <span class="p">}</span></div><div class='line' id='LC1296'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span><span class="o">!</span>foroptim<span class="p">){</span></div><div class='line' id='LC1297'>&nbsp;&nbsp;&nbsp;&nbsp;output <span class="o">=</span> list<span class="p">(</span> loglikelihood<span class="o">=</span>ll<span class="p">,</span> likelihoods<span class="o">=</span>lls<span class="p">,</span> condvar <span class="o">=</span> h <span class="p">);</span></div><div class='line' id='LC1298'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>output<span class="p">)</span></div><div class='line' id='LC1299'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Output list:</span></div><div class='line' id='LC1300'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># (i) total loglikelihood</span></div><div class='line' id='LC1301'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># (ii) likelihood parts per time period</span></div><div class='line' id='LC1302'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># (iii) matrix with conditional variances    </span></div><div class='line' id='LC1303'>&nbsp;&nbsp;<span class="p">}</span> <span class="c1">#end output in case you want params</span></div><div class='line' id='LC1304'><span class="p">}</span></div><div class='line' id='LC1305'><br/></div><div class='line' id='LC1306'><br/></div><div class='line' id='LC1307'>.heavy_likelihood_ll  <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> splittedparams<span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span> <span class="kc">...</span> <span class="p">){</span> </div><div class='line' id='LC1308'>&nbsp;&nbsp;par <span class="o">=</span> .transtopar<span class="p">(</span> splittedparams<span class="p">,</span>  p<span class="p">,</span> q <span class="p">)</span></div><div class='line' id='LC1309'>&nbsp;&nbsp;out <span class="o">=</span> .heavy_likelihood<span class="p">(</span> par<span class="o">=</span>par<span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> foroptim<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span> <span class="p">)</span></div><div class='line' id='LC1310'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">((</span><span class="m">-1</span><span class="p">)</span><span class="o">*</span>out<span class="p">[[</span><span class="m">1</span><span class="p">]])</span></div><div class='line' id='LC1311'><span class="p">}</span> </div><div class='line' id='LC1312'><br/></div><div class='line' id='LC1313'>.heavy_likelihood_lls  <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> splittedparams <span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span><span class="kc">...</span> <span class="p">){</span> </div><div class='line' id='LC1314'>&nbsp;&nbsp;par <span class="o">=</span> .transtopar<span class="p">(</span> splittedparams<span class="p">,</span>  p<span class="p">,</span> q <span class="p">)</span></div><div class='line' id='LC1315'>&nbsp;&nbsp;out <span class="o">=</span> .heavy_likelihood<span class="p">(</span> par<span class="o">=</span>par<span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> foroptim<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span> <span class="p">)</span></div><div class='line' id='LC1316'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">((</span><span class="m">-1</span><span class="p">)</span><span class="o">*</span>out<span class="p">[[</span><span class="m">2</span><span class="p">]])</span></div><div class='line' id='LC1317'><span class="p">}</span> </div><div class='line' id='LC1318'><br/></div><div class='line' id='LC1319'>.get_param_names <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> estparams<span class="p">,</span> p<span class="p">,</span> q<span class="p">){</span></div><div class='line' id='LC1320'>&nbsp;&nbsp;K <span class="o">=</span> dim<span class="p">(</span>p<span class="p">)[</span><span class="m">2</span><span class="p">];</span></div><div class='line' id='LC1321'>&nbsp;&nbsp;nAlpha <span class="o">=</span>  sum<span class="p">(</span>p<span class="p">);</span></div><div class='line' id='LC1322'>&nbsp;&nbsp;nBeta  <span class="o">=</span>  sum<span class="p">(</span>q<span class="p">);</span></div><div class='line' id='LC1323'>&nbsp;&nbsp;omegas <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;omega&quot;</span><span class="p">,</span><span class="m">1</span><span class="o">:</span>K<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC1324'>&nbsp;&nbsp;alphas <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;alpha&quot;</span><span class="p">,</span><span class="m">1</span><span class="o">:</span>nAlpha<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC1325'>&nbsp;&nbsp;betas  <span class="o">=</span> paste<span class="p">(</span><span class="s">&quot;beta&quot;</span><span class="p">,</span> <span class="m">1</span><span class="o">:</span>nBeta<span class="p">,</span>sep<span class="o">=</span><span class="s">&quot;&quot;</span><span class="p">);</span></div><div class='line' id='LC1326'>&nbsp;&nbsp;names  <span class="o">=</span> c<span class="p">(</span>omegas<span class="p">,</span>alphas<span class="p">,</span>betas<span class="p">);</span></div><div class='line' id='LC1327'>&nbsp;&nbsp;</div><div class='line' id='LC1328'><span class="p">}</span></div><div class='line' id='LC1329'><br/></div><div class='line' id='LC1330'><br/></div><div class='line' id='LC1331'>.SEheavyModel <span class="o">=</span> <span class="kr">function</span><span class="p">(</span> paramsvector<span class="p">,</span> data<span class="p">,</span> p<span class="p">,</span> q<span class="p">,</span> backcast<span class="p">,</span> LB<span class="p">,</span> UB<span class="p">,</span> compconst<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span> <span class="kc">...</span><span class="p">)</span></div><div class='line' id='LC1332'><span class="p">{</span></div><div class='line' id='LC1333'>&nbsp;&nbsp;require<span class="p">(</span>numDeriv<span class="p">)</span></div><div class='line' id='LC1334'>&nbsp;&nbsp;K    <span class="o">=</span> ncol<span class="p">(</span>data<span class="p">);</span>  <span class="c1">#Number of series to model</span></div><div class='line' id='LC1335'>&nbsp;&nbsp;</div><div class='line' id='LC1336'>&nbsp;&nbsp;<span class="c1"># Set lower and upper-bound if not specified:</span></div><div class='line' id='LC1337'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> is.null<span class="p">(</span>LB<span class="p">)</span> <span class="p">){</span> LB <span class="o">=</span> rep<span class="p">(</span><span class="m">0</span><span class="p">,</span>K<span class="p">)</span>   <span class="p">}</span></div><div class='line' id='LC1338'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> is.null<span class="p">(</span>UB<span class="p">)</span> <span class="p">){</span> UB <span class="o">=</span> rep<span class="p">(</span><span class="kc">Inf</span><span class="p">,</span>K<span class="p">)</span> <span class="p">}</span></div><div class='line' id='LC1339'>&nbsp;&nbsp;</div><div class='line' id='LC1340'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span><span class="o">!</span>compconst<span class="p">){</span></div><div class='line' id='LC1341'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># based on p and q, map heavy paramsvector into splitted params vector called theta </span></div><div class='line' id='LC1342'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1343'>&nbsp;&nbsp;&nbsp;&nbsp;out <span class="o">=</span> .transtosplit <span class="p">(</span> paramsvector<span class="o">=</span>paramsvector<span class="p">,</span>  p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">)</span></div><div class='line' id='LC1344'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1345'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># vk[i] is the number of parameters of equation i in the heavy model</span></div><div class='line' id='LC1346'>&nbsp;&nbsp;&nbsp;&nbsp;vk <span class="o">=</span> out<span class="p">[[</span><span class="m">2</span><span class="p">]];</span></div><div class='line' id='LC1347'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1348'>&nbsp;&nbsp;&nbsp;&nbsp;splittedparams <span class="o">=</span> out<span class="p">[[</span><span class="m">1</span><span class="p">]];</span></div><div class='line' id='LC1349'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1350'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># compute the asymptotic covariance matrix of splittedparamsvector</span></div><div class='line' id='LC1351'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1352'>&nbsp;&nbsp;&nbsp;&nbsp;mH <span class="o">=</span> hessian <span class="p">(</span>.heavy_likelihood_ll<span class="p">,</span> x<span class="o">=</span> splittedparams<span class="p">,</span> data<span class="o">=</span>data<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">,</span> backcast<span class="o">=</span>backcast<span class="p">,</span> LB<span class="o">=</span>LB<span class="p">,</span> UB<span class="o">=</span>UB<span class="p">,</span> compconst<span class="o">=</span>compconst<span class="p">)</span></div><div class='line' id='LC1353'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1354'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k-Variable">T</span>        <span class="o">=</span> nrow<span class="p">(</span>data<span class="p">)</span> </div><div class='line' id='LC1355'>&nbsp;&nbsp;&nbsp;&nbsp;nm       <span class="o">=</span> length<span class="p">(</span>paramsvector<span class="p">)</span></div><div class='line' id='LC1356'>&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix  <span class="o">=</span> matrix <span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> nm<span class="o">^</span><span class="m">2</span><span class="p">),</span> ncol <span class="o">=</span> nm<span class="p">)</span></div><div class='line' id='LC1357'>&nbsp;&nbsp;&nbsp;&nbsp;end <span class="o">=</span> <span class="m">0</span></div><div class='line' id='LC1358'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1359'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1360'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span> k <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">){</span></div><div class='line' id='LC1361'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span></div><div class='line' id='LC1362'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end   <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>k<span class="p">]</span> <span class="o">-</span> <span class="m">1</span></div><div class='line' id='LC1363'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix<span class="p">[</span>start<span class="o">:</span>end<span class="p">,</span> start<span class="o">:</span>end<span class="p">]</span> <span class="o">=</span>  mH<span class="p">[</span>start<span class="o">:</span>end<span class="p">,</span> start<span class="o">:</span>end<span class="p">]</span></div><div class='line' id='LC1364'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> </div><div class='line' id='LC1365'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1366'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## Define It</span></div><div class='line' id='LC1367'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># jacobian will be T x length of theta </span></div><div class='line' id='LC1368'>&nbsp;&nbsp;&nbsp;&nbsp;m  <span class="o">=</span> jacobian<span class="p">(</span>.heavy_likelihood_lls<span class="p">,</span> x <span class="o">=</span> splittedparams<span class="p">,</span> data<span class="o">=</span>data<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">,</span> backcast<span class="o">=</span>backcast<span class="p">,</span> LB<span class="o">=</span>LB<span class="p">,</span> UB<span class="o">=</span>UB<span class="p">,</span> compconst<span class="o">=</span>compconst<span class="p">)</span> <span class="c1"># returns a vector?</span></div><div class='line' id='LC1369'>&nbsp;&nbsp;&nbsp;&nbsp;It <span class="o">=</span> cov<span class="p">(</span>m<span class="p">)</span></div><div class='line' id='LC1370'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1371'>&nbsp;&nbsp;<span class="p">}</span><span class="kr">else</span><span class="p">{</span></div><div class='line' id='LC1372'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1373'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Change value of mu: </span></div><div class='line' id='LC1374'>&nbsp;&nbsp;&nbsp;&nbsp;paramsvector<span class="p">[</span><span class="m">1</span><span class="o">:</span>K<span class="p">]</span>  <span class="o">=</span> colMeans<span class="p">(</span>data<span class="p">)</span></div><div class='line' id='LC1375'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1376'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1377'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># based on p and q, map heavy paramsvector into splitted params vector called theta </span></div><div class='line' id='LC1378'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1379'>&nbsp;&nbsp;&nbsp;&nbsp;out <span class="o">=</span> .transtosplit <span class="p">(</span> paramsvector<span class="o">=</span>paramsvector<span class="p">,</span>  p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">)</span></div><div class='line' id='LC1380'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1381'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># vk[i] is the number of parameters of equation i in the heavy model</span></div><div class='line' id='LC1382'>&nbsp;&nbsp;&nbsp;&nbsp;vk <span class="o">=</span> out<span class="p">[[</span><span class="m">2</span><span class="p">]];</span></div><div class='line' id='LC1383'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1384'>&nbsp;&nbsp;&nbsp;&nbsp;splittedparams <span class="o">=</span> out<span class="p">[[</span><span class="m">1</span><span class="p">]];</span></div><div class='line' id='LC1385'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1386'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># compute the asymptotic covariance matrix of splittedparamsvector</span></div><div class='line' id='LC1387'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1388'>&nbsp;&nbsp;&nbsp;&nbsp;mH <span class="o">=</span> hessian <span class="p">(</span>.heavy_likelihood_ll<span class="p">,</span> x<span class="o">=</span> splittedparams<span class="p">,</span> data<span class="o">=</span>data<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">,</span> backcast<span class="o">=</span>backcast<span class="p">,</span> LB<span class="o">=</span>LB<span class="p">,</span> UB<span class="o">=</span>UB<span class="p">,</span> compconst<span class="o">=</span>compconst<span class="p">)</span></div><div class='line' id='LC1389'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1390'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k-Variable">T</span>        <span class="o">=</span> nrow<span class="p">(</span>data<span class="p">)</span> </div><div class='line' id='LC1391'>&nbsp;&nbsp;&nbsp;&nbsp;nm       <span class="o">=</span> length<span class="p">(</span>paramsvector<span class="p">)</span></div><div class='line' id='LC1392'>&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix  <span class="o">=</span> matrix <span class="p">(</span>rep<span class="p">(</span><span class="m">0</span><span class="p">,</span> nm<span class="o">^</span><span class="m">2</span><span class="p">),</span> ncol <span class="o">=</span> nm<span class="p">)</span></div><div class='line' id='LC1393'>&nbsp;&nbsp;&nbsp;&nbsp;end <span class="o">=</span> <span class="m">0</span></div><div class='line' id='LC1394'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1395'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1396'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span><span class="p">(</span> k <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">){</span></div><div class='line' id='LC1397'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span></div><div class='line' id='LC1398'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end   <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>k<span class="p">]</span> <span class="o">-</span> <span class="m">1</span></div><div class='line' id='LC1399'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix<span class="p">[</span>start<span class="o">:</span>end<span class="p">,</span> start<span class="o">:</span>end<span class="p">]</span> <span class="o">=</span>  mH<span class="p">[</span>start<span class="o">:</span>end<span class="p">,</span> start<span class="o">:</span>end<span class="p">]</span></div><div class='line' id='LC1400'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> </div><div class='line' id='LC1401'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1402'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Change value of matrix Jt:</span></div><div class='line' id='LC1403'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1404'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Change value of 0: </span></div><div class='line' id='LC1405'>&nbsp;&nbsp;&nbsp;&nbsp;end <span class="o">=</span> <span class="m">0</span><span class="p">;</span></div><div class='line' id='LC1406'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1407'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K <span class="p">)</span></div><div class='line' id='LC1408'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1409'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>j<span class="o">&gt;</span><span class="m">1</span><span class="p">){</span>col<span class="o">=</span> col<span class="o">+</span> vk<span class="p">[</span>j<span class="m">-1</span><span class="p">]}</span> </div><div class='line' id='LC1410'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">else</span><span class="p">{</span>col<span class="o">=</span><span class="m">1</span><span class="p">};</span></div><div class='line' id='LC1411'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1412'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> end <span class="o">+</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1413'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>j<span class="p">]</span> <span class="o">-</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1414'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix<span class="p">[</span>start<span class="o">:</span>end<span class="p">,</span>col<span class="p">]</span> <span class="o">=</span> <span class="m">0</span><span class="p">;</span></div><div class='line' id='LC1415'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1416'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1417'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1418'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Change value of T:</span></div><div class='line' id='LC1419'>&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1420'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1421'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">)</span></div><div class='line' id='LC1422'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1423'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1424'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jmatrix<span class="p">[</span>start<span class="p">,</span>start<span class="p">]</span> <span class="o">=</span> <span class="k-Variable">T</span><span class="p">;</span></div><div class='line' id='LC1425'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1426'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>i<span class="p">]</span></div><div class='line' id='LC1427'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1428'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1429'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">## Define It</span></div><div class='line' id='LC1430'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># jacobian will be T x length of theta </span></div><div class='line' id='LC1431'>&nbsp;&nbsp;&nbsp;&nbsp;m  <span class="o">=</span> jacobian<span class="p">(</span>.heavy_likelihood_lls<span class="p">,</span> x <span class="o">=</span> splittedparams<span class="p">,</span> data<span class="o">=</span>data<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">,</span> backcast<span class="o">=</span>backcast<span class="p">,</span> LB<span class="o">=</span>LB<span class="p">,</span> UB<span class="o">=</span>UB<span class="p">,</span> compconst<span class="o">=</span>compconst<span class="p">)</span> <span class="c1"># returns a matrix of T by L (length of theta)</span></div><div class='line' id='LC1432'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1433'>&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> <span class="m">1</span><span class="p">;</span></div><div class='line' id='LC1434'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">for</span> <span class="p">(</span>i <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>K<span class="p">)</span></div><div class='line' id='LC1435'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1436'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m<span class="p">[,</span>start<span class="p">]</span> <span class="o">=</span> <span class="m">1</span><span class="o">/</span><span class="k-Variable">T</span> <span class="o">*</span> <span class="p">(</span>data<span class="p">[,</span>i<span class="p">]</span> <span class="o">-</span> paramsvector<span class="p">[</span>i<span class="p">]);</span></div><div class='line' id='LC1437'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>i<span class="m">-1</span><span class="p">]</span></div><div class='line' id='LC1438'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1439'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>i<span class="o">&lt;</span>K<span class="p">){</span>start <span class="o">=</span> start <span class="o">+</span> vk<span class="p">[</span>i<span class="p">]}</span></div><div class='line' id='LC1440'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1441'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1442'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1443'>&nbsp;&nbsp;&nbsp;&nbsp;require<span class="p">(</span>sandwich<span class="p">);</span></div><div class='line' id='LC1444'>&nbsp;&nbsp;&nbsp;&nbsp;fm <span class="o">=</span> lm<span class="p">(</span>m <span class="o">~</span> <span class="m">0</span><span class="p">);</span> </div><div class='line' id='LC1445'>&nbsp;&nbsp;&nbsp;&nbsp;It <span class="o">=</span> try<span class="p">(</span>vcovHAC<span class="p">(</span>fm<span class="p">))</span></div><div class='line' id='LC1446'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC1447'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span>class<span class="p">(</span>It<span class="p">)</span> <span class="o">==</span> <span class="s">&quot;try-error&quot;</span><span class="p">)</span></div><div class='line' id='LC1448'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC1449'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print<span class="p">(</span><span class="s">&quot;HAC estimator is in error. It is replaced by non HAC estimator.&quot;</span><span class="p">)</span></div><div class='line' id='LC1450'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It <span class="o">=</span> cov<span class="p">(</span>m<span class="p">)</span></div><div class='line' id='LC1451'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1452'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1453'>&nbsp;&nbsp;</div><div class='line' id='LC1454'>&nbsp;&nbsp;<span class="c1">## Jt matrix</span></div><div class='line' id='LC1455'>&nbsp;&nbsp;Jt <span class="o">=</span> <span class="m">-1</span><span class="o">/</span><span class="k-Variable">T</span> <span class="o">*</span> Jmatrix</div><div class='line' id='LC1456'>&nbsp;&nbsp;<span class="c1">## J-1 (inverse matrix of J):</span></div><div class='line' id='LC1457'>&nbsp;&nbsp;</div><div class='line' id='LC1458'>&nbsp;&nbsp;invJ <span class="o">=</span> try<span class="p">(</span>solve<span class="p">(</span>Jt<span class="p">))</span></div><div class='line' id='LC1459'>&nbsp;&nbsp;<span class="kr">if</span><span class="p">(</span> class<span class="p">(</span>invJ<span class="p">)</span> <span class="o">==</span> <span class="s">&quot;try-error&quot;</span><span class="p">){</span></div><div class='line' id='LC1460'>&nbsp;&nbsp;&nbsp;&nbsp;require<span class="p">(</span><span class="s">&quot;MASS&quot;</span><span class="p">)</span></div><div class='line' id='LC1461'>&nbsp;&nbsp;&nbsp;&nbsp;print<span class="p">(</span><span class="s">&quot;-1*Hessian is not invertible - generalized inverse is used&quot;</span><span class="p">)</span></div><div class='line' id='LC1462'>&nbsp;&nbsp;&nbsp;&nbsp;invJ <span class="o">=</span> ginv<span class="p">(</span>Jt<span class="p">)</span></div><div class='line' id='LC1463'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC1464'>&nbsp;&nbsp;</div><div class='line' id='LC1465'>&nbsp;&nbsp;</div><div class='line' id='LC1466'>&nbsp;&nbsp;<span class="c1">## Standard error:</span></div><div class='line' id='LC1467'>&nbsp;&nbsp;</div><div class='line' id='LC1468'>&nbsp;&nbsp;ACOVheavyModel <span class="o">=</span>  <span class="p">(</span>invJ <span class="o">%*%</span> It <span class="o">%*%</span> t<span class="p">(</span>invJ<span class="p">))</span> <span class="c1">#return a matrix</span></div><div class='line' id='LC1469'>&nbsp;&nbsp;</div><div class='line' id='LC1470'>&nbsp;&nbsp;<span class="c1"># compute the standard errors of splittedparamsvector</span></div><div class='line' id='LC1471'>&nbsp;&nbsp;</div><div class='line' id='LC1472'>&nbsp;&nbsp;<span class="c1"># Standard error:</span></div><div class='line' id='LC1473'>&nbsp;&nbsp;SEheavyModel <span class="o">=</span> sqrt<span class="p">(</span>diag<span class="p">(</span>ACOVheavyModel<span class="p">))</span><span class="o">/</span>sqrt<span class="p">(</span><span class="k-Variable">T</span><span class="p">)</span>   </div><div class='line' id='LC1474'>&nbsp;&nbsp;</div><div class='line' id='LC1475'>&nbsp;&nbsp;<span class="c1"># reorder such that they correspond to paramsvector</span></div><div class='line' id='LC1476'>&nbsp;&nbsp;reSEheavyModel <span class="o">=</span> .transtopar<span class="p">(</span>SEheavyModel<span class="p">,</span> p<span class="p">,</span> q<span class="p">)</span></div><div class='line' id='LC1477'>&nbsp;&nbsp;</div><div class='line' id='LC1478'>&nbsp;&nbsp;<span class="c1"># map it back to paramsvector</span></div><div class='line' id='LC1479'>&nbsp;&nbsp;out           <span class="o">=</span> as.matrix<span class="p">(</span>t<span class="p">(</span>rbind<span class="p">(</span>paramsvector<span class="p">,</span> reSEheavyModel<span class="p">)))</span></div><div class='line' id='LC1480'>&nbsp;&nbsp;colnames<span class="p">(</span>out<span class="p">)</span> <span class="o">&lt;-</span> c<span class="p">(</span><span class="s">&quot;Parameter&quot;</span><span class="p">,</span> <span class="s">&quot;Standard error&quot;</span><span class="p">)</span></div><div class='line' id='LC1481'>&nbsp;&nbsp;rownames<span class="p">(</span>out<span class="p">)</span> <span class="o">=</span> .get_param_names<span class="p">(</span>estparams <span class="o">=</span> paramsvector<span class="p">,</span> p<span class="o">=</span>p<span class="p">,</span> q<span class="o">=</span>q<span class="p">)</span></div><div class='line' id='LC1482'>&nbsp;&nbsp;<span class="kr">return</span><span class="p">(</span>out<span class="p">)</span></div><div class='line' id='LC1483'>&nbsp;&nbsp;</div><div class='line' id='LC1484'><span class="p">}</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.17501s from github-fe122-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/jonathancornelissen/highfrequency/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

