


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>highfrequency/man/MRC.Rd at master · jonathancornelissen/highfrequency · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe134-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (2012-05-25, TCS patched 2012-05-27, GitHub v1.0.36) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="4E166160:6828:F271B3:52418096" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="ybm8kGOPneZiMmAw1ZYxjQySvyZmn8CZN6HGTIyowDw=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-e503554bd5ad06674d1b10d72e423102f78ab1d2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-2357359f6823a4e414d202ebd002ff1d34492325.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-8db79d6d3d61c3bdec72ede901c2b6dbd4a79dad.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-c6ea436c6358b0518da3cb5c492124ea04237ad2.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="df85b9c2dad3983d1e25edab2835ede3">

        <link data-pjax-transient rel='permalink' href='/jonathancornelissen/highfrequency/blob/3b3f88ccde3e84c746f5acc924ac366297bf2ba9/man/MRC.Rd'>
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
      <a class="button signin" href="/login?return_to=%2Fjonathancornelissen%2Fhighfrequency%2Fblob%2Fmaster%2Fman%2FMRC.Rd">Sign in</a>
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
          


<!-- blob contrib key: blob_contributors:v21:627481695ec38f015c458b47f5d3c844 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:627481695ec38f015c458b47f5d3c844 -->

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
              <a href="/jonathancornelissen/highfrequency/blob/master/man/MRC.Rd" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
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
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">highfrequency</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency/tree/master/man" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">man</span></a></span><span class="separator"> / </span><strong class="final-path">MRC.Rd</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="man/MRC.Rd" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/jonathancornelissen/highfrequency/contributors/master/man/MRC.Rd">
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
          <span>86 lines (72 sloc)</span>
        <span>4.566 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be signed in to make or propose changes">Edit</a>
          <a href="/jonathancornelissen/highfrequency/raw/master/man/MRC.Rd" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jonathancornelissen/highfrequency/blame/master/man/MRC.Rd" class="button minibutton ">Blame</a>
          <a href="/jonathancornelissen/highfrequency/commits/master/man/MRC.Rd" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon js-entice" href=""
               data-entice="You must be signed in and on a branch to make or propose changes">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-text js-blob-data">
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

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'>\name{MRC}</div><div class='line' id='LC2'>\alias{MRC}</div><div class='line' id='LC3'>\title{</div><div class='line' id='LC4'>Modulated Realized Covariance (MRC): Return univariate or multivariate preaveraged estimator.  </div><div class='line' id='LC5'>}</div><div class='line' id='LC6'>\description{</div><div class='line' id='LC7'>Function returns univariate or multivariate preaveraged estimator, as difined in Hautsch and Podolskij (2013). </div><div class='line' id='LC8'>}</div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'>\usage{</div><div class='line' id='LC11'>MRC(pdata, pairwise=FALSE,makePsd= FALSE,...)</div><div class='line' id='LC12'>}</div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'>\arguments{</div><div class='line' id='LC15'>&nbsp;&nbsp;\item{pdata}{a list. Each list-item contains an xts object with the intraday price data of a stock.}</div><div class='line' id='LC16'>&nbsp;&nbsp;\item{pairwise}{boolean, should be TRUE when refresh times are based on pairs of assets. FALSE by  default.}</div><div class='line' id='LC17'>&nbsp;&nbsp;\item{makePsd}{boolean, in case it is TRUE, the positive definite version of MRC is returned. FALSE by default.}</div><div class='line' id='LC18'>&nbsp;&nbsp;\item{...}{additional arguments.}</div><div class='line' id='LC19'>}</div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'>\value{</div><div class='line' id='LC22'>an \eqn{d x d} matrix</div><div class='line' id='LC23'>}</div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'>\details{</div><div class='line' id='LC26'>In practice, market microstructure noise leads to a departure from the pure semimartingale model. We consider the process \eqn{Y} in period \eqn{\tau}: </div><div class='line' id='LC27'>\deqn{</div><div class='line' id='LC28'>\mbox{Y}_{\tau} = X_{\tau} + \epsilon_{\tau}</div><div class='line' id='LC29'>}</div><div class='line' id='LC30'>where, the observed \eqn{d} dimensional log-prices are the sum of underlying Brownian semimartingale process \eqn{X} and a noise term \eqn{\epsilon_{\tau}}. </div><div class='line' id='LC31'><br/></div><div class='line' id='LC32'>\eqn{\epsilon_{\tau}} is an i.i.d process with \eqn{X}. </div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'>It is intuitive that under mean zero i.i.d. microstructure noise some form of smoothing of the observed log-price should tend to diminish the impact of the noise. Effectively, we are going to approximate a continuous function by an average of observations of Y in a neighborhood, the noise being averaged away. </div><div class='line' id='LC35'><br/></div><div class='line' id='LC36'>Assume there is \eqn{N} equispaced returns in period \eqn{\tau} of a list (after refeshing data). Let \eqn{r_{\tau_i}} be a return (with \eqn{i=1, \ldots,N}) of an asset in period \eqn{\tau}. Assume there is \eqn{d} assets. </div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'>In order to define the univariate pre-averaging estimator, we first define the pre-averaged returns as</div><div class='line' id='LC39'>\deqn{</div><div class='line' id='LC40'>\bar{r}_{\tau_j}^{(k)}= \sum_{h=1}^{k_N-1}g\left(\frac{h}{k_N}\right)r_{\tau_{j+h}}^{(k)}</div><div class='line' id='LC41'>}</div><div class='line' id='LC42'>where g is a non-zero real-valued function \eqn{g:[0,1]} \eqn{\rightarrow} \eqn{R} given by \eqn{g(x)} = \eqn{\min(x,1-x)}. \eqn{k_N} is a sequence of integers satisfying  \eqn{\mbox{k}_{N} = \lfloor\theta N^{1/2}\rfloor}. We use \eqn{\theta = 0.8} as recommendations in (Hautsch &amp; Podolskij (2013)). The pre-averaged returns are simply a weighted average over the returns in a local window. This averaging diminishes the influence of the noise. The order of the window size \eqn{k_n} is chosen to lead to optimal convergence rates. The pre-averaging estimator is then simply the analogue of the Realized Variance but based on pre-averaged returns and an additional term to remove bias due to noise</div><div class='line' id='LC43'>\deqn{</div><div class='line' id='LC44'>\hat{C}= \frac{N^{-1/2}}{\theta \psi_2}\sum_{i=0}^{N-k_N+1}  (\bar{r}_{\tau_i})^2-\frac{\psi_1^{k_N}N^{-1}}{2\theta^2\psi_2^{k_N}}\sum_{i=0}^{N}r_{\tau_i}^2</div><div class='line' id='LC45'>}</div><div class='line' id='LC46'>with</div><div class='line' id='LC47'>\deqn{</div><div class='line' id='LC48'>\psi_1^{k_N}= k_N \sum_{j=1}^{k_N}\left(g\left(\frac{j+1}{k_N}\right)-g\left(\frac{j}{k_N}\right)\right)^2,\quad </div><div class='line' id='LC49'>}</div><div class='line' id='LC50'>\deqn{</div><div class='line' id='LC51'>\psi_2^{k_N}= \frac{1}{k_N}\sum_{j=1}^{k_N-1}g^2\left(\frac{j}{k_N}\right).</div><div class='line' id='LC52'>}</div><div class='line' id='LC53'>\deqn{</div><div class='line' id='LC54'>\psi_2= \frac{1}{12}</div><div class='line' id='LC55'>}</div><div class='line' id='LC56'>The multivariate counterpart is very similar. The estimator is called the Modulated Realized Covariance (MRC) and is defined as</div><div class='line' id='LC57'>\deqn{</div><div class='line' id='LC58'>\mbox{MRC}= \frac{N}{N-k_N+2}\frac{1}{\psi_2k_N}\sum_{i=0}^{N-k_N+1}\bar{\boldsymbol{r}}_{\tau_i}\cdot \bar{\boldsymbol{r}}&#39;_{\tau_i} -\frac{\psi_1^{k_N}}{\theta^2\psi_2^{k_N}}\hat{\Psi}</div><div class='line' id='LC59'>}</div><div class='line' id='LC60'>where \eqn{\hat{\Psi}_N = \frac{1}{2N}\sum_{i=1}^N \boldsymbol{r}_{\tau_i}(\boldsymbol{r}_{\tau_i})&#39;}. It is a bias correction to make it consistent. However, due to this correction, the estimator is not ensured PSD. An alternative is to slightly enlarge the bandwidth such that \eqn{\mbox{k}_{N} = \lfloor\theta N^{1/2+\delta}\rfloor}. \eqn{\delta = 0.1} results in a consistent estimate without the bias correction and a PSD estimate, in which case:</div><div class='line' id='LC61'>\deqn{</div><div class='line' id='LC62'>&nbsp;\mbox{MRC}^{\delta}= \frac{N}{N-k_N+2}\frac{1}{\psi_2k_N}\sum_{i=0}^{N-k_N+1}\bar{\boldsymbol{r}}_i\cdot \bar{\boldsymbol{r}}&#39;_i</div><div class='line' id='LC63'>}</div><div class='line' id='LC64'><br/></div><div class='line' id='LC65'>}</div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'>\references{</div><div class='line' id='LC68'>Hautsch, N., &amp; Podolskij, M. (2013). Preaveraging-Based Estimation of Quadratic Variation in the Presence of Noise and Jumps: Theory, Implementation, and Empirical Evidence. Journal of Business &amp; Economic Statistics, 31(2), 165-183.</div><div class='line' id='LC69'><br/></div><div class='line' id='LC70'>}</div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'>\author{</div><div class='line' id='LC73'>Giang Nguyen, Jonathan Cornelissen and Kris Boudt</div><div class='line' id='LC74'>}</div><div class='line' id='LC75'><br/></div><div class='line' id='LC76'>\examples{</div><div class='line' id='LC77'>data(sample_5minprices_jumps)</div><div class='line' id='LC78'>a= list (sample_5minprices_jumps[&quot;2010-01-04&quot;,1], </div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sample_5minprices_jumps[&quot;2010-01-04&quot;,2] )</div><div class='line' id='LC80'>MRC(a, pairwise=TRUE,makePsd=TRUE)</div><div class='line' id='LC81'>}</div><div class='line' id='LC82'>% Add one or more standard keywords, see file &#39;KEYWORDS&#39; in the</div><div class='line' id='LC83'>% R documentation directory.</div><div class='line' id='LC84'>\keyword{ highfrequency }</div><div class='line' id='LC85'>\keyword{ preaveraging }</div></pre></div>
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
      <li>&copy; 2013 <span title="0.03412s from github-fe134-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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

