


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>highfrequency/src/highfrequency.h at master · jonathancornelissen/highfrequency · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe110-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (2012-05-25, TCS patched 2012-05-27, GitHub v1.0.36) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="4E166160:32FC:FB9585:5241811A" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="ybm8kGOPneZiMmAw1ZYxjQySvyZmn8CZN6HGTIyowDw=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-e503554bd5ad06674d1b10d72e423102f78ab1d2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-2357359f6823a4e414d202ebd002ff1d34492325.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-8db79d6d3d61c3bdec72ede901c2b6dbd4a79dad.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-c6ea436c6358b0518da3cb5c492124ea04237ad2.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="df85b9c2dad3983d1e25edab2835ede3">

        <link data-pjax-transient rel='permalink' href='/jonathancornelissen/highfrequency/blob/3b3f88ccde3e84c746f5acc924ac366297bf2ba9/src/highfrequency.h'>
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
      <a class="button signin" href="/login?return_to=%2Fjonathancornelissen%2Fhighfrequency%2Fblob%2Fmaster%2Fsrc%2Fhighfrequency.h">Sign in</a>
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
          


<!-- blob contrib key: blob_contributors:v21:2950dbd941bc1c9f42c47f609956dd7e -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:2950dbd941bc1c9f42c47f609956dd7e -->

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
              <a href="/jonathancornelissen/highfrequency/blob/master/src/highfrequency.h" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
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
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">highfrequency</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jonathancornelissen/highfrequency/tree/master/src" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">src</span></a></span><span class="separator"> / </span><strong class="final-path">highfrequency.h</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="src/highfrequency.h" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/jonathancornelissen/highfrequency/contributors/master/src/highfrequency.h">
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
          <span>33 lines (28 sloc)</span>
        <span>2.294 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be signed in to make or propose changes">Edit</a>
          <a href="/jonathancornelissen/highfrequency/raw/master/src/highfrequency.h" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jonathancornelissen/highfrequency/blame/master/src/highfrequency.h" class="button minibutton ">Blame</a>
          <a href="/jonathancornelissen/highfrequency/commits/master/src/highfrequency.h" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon js-entice" href=""
               data-entice="You must be signed in and on a branch to make or propose changes">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-c js-blob-data">
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

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="cp">#ifndef _highfrequency_H_</span></div><div class='line' id='LC2'><span class="cp">#define _highfrequency_H_</span></div><div class='line' id='LC3'><span class="c1">//--------- new functions for R --------------------</span></div><div class='line' id='LC4'><span class="cp">#include &lt;stdlib.h&gt; </span></div><div class='line' id='LC5'><span class="cp">#include &lt;stdio.h&gt; </span></div><div class='line' id='LC6'><span class="cp">#include &lt;math.h&gt; </span></div><div class='line' id='LC7'><span class="c1">//--------- end new functions for R --------------------</span></div><div class='line' id='LC8'><span class="c1">//void covkernel(double *a, double *b, int *na, int *q, int *adj, double *ans);</span></div><div class='line' id='LC9'><span class="c1">//void kernel(double *a, int *na, int *q, int *adj, int *nw, double *ab, double *ans);</span></div><div class='line' id='LC10'><span class="c1">//void subsample(double *a, double *b, int *na, int *m, int *period, double *tmpa, double *tmpb, int *tmpna, double *ans);</span></div><div class='line' id='LC11'><span class="c1">//void rv(double *a, double *b, int *na, int *period, double *tmpa, double *tmpb, int *tmpna, double *ans);</span></div><div class='line' id='LC12'><span class="c1">//void pcovcc(double *a, double *ap, double *b, double *at,double *atp, double *bt, int *na, int *nap, int *nb, int *period, double *ans);</span></div><div class='line' id='LC13'><span class="c1">//void rfourth(double *a, double *b, int *na, int *period, double *tmpa, double *tmpb, int *tmpna, double *ans);</span></div><div class='line' id='LC14'><span class="c1">//void covcc(double *a, double *b, double *at, double *bt, int *na, int *nb, double *ans);</span></div><div class='line' id='LC15'><span class="c1">//void rfourthlead(double *a, double *b, int *na, int *period, double *tmpa, double *tmpb, int *tmpna, double *ans);</span></div><div class='line' id='LC16'><span class="c1">//void kernel2(double *a, double *b, int *na, int *q, int *adj, int *nw, double *ab,  double *ab2, double *ans);</span></div><div class='line' id='LC17'><span class="c1">//void sametime(double *a, int *na, int *millis, double *tts);</span></div><div class='line' id='LC18'><span class="c1">//void tocts(double *a, int *na, int *millis, int *millisstart, int *millisend, double *cts);</span></div><div class='line' id='LC19'><span class="c1">//void portfolio(double *a, double *b, int *na, int *nb, int *millisa, int *millisb,int *millis,int *milliesn, double *port);</span></div><div class='line' id='LC20'><span class="c1">//double K(double x, int type);</span></div><div class='line' id='LC21'><span class="c1">//void justKernel(double *x, int *type, double *ans);</span></div><div class='line' id='LC22'><span class="c1">//void kernelEstimator(double *a, double *b, int *na, int *q, int *adj, int *type, double *ab,  double *ab2, double *ans);</span></div><div class='line' id='LC23'><span class="c1">//void rvperiod(double *a, double *b, int *na, int *period, double *tmpa, double *tmpb, int *tmpna, double *ans);</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'><span class="kt">void</span> <span class="nf">heavy_likelihoodR</span><span class="p">(</span><span class="kt">double</span> <span class="o">*</span><span class="n">parameters</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">data</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">T</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">K</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">means</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">p</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">q</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">pMax</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">qMax</span><span class="p">,</span> </div><div class='line' id='LC26'>&nbsp;&nbsp;		<span class="kt">double</span> <span class="o">*</span><span class="n">backcast</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">LB</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">UB</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">compconst</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">h</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">lls</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">llRM</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">ll</span><span class="p">);</span></div><div class='line' id='LC27'><span class="kt">void</span> <span class="nf">heavy_parameter_transformR</span><span class="p">(</span><span class="kt">double</span> <span class="o">*</span><span class="n">parameters</span><span class="p">,</span> <span class="kt">int</span> <span class="n">K</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">p</span><span class="p">,</span> <span class="kt">int</span> <span class="o">*</span><span class="n">q</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">O</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">A</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">B</span><span class="p">);</span></div><div class='line' id='LC28'><span class="kt">void</span> <span class="nf">heavy_parameter_transform_RetrackR</span><span class="p">(</span><span class="kt">double</span> <span class="o">*</span><span class="n">parameters</span><span class="p">,</span> <span class="kt">int</span> <span class="n">K</span><span class="p">,</span>  <span class="kt">int</span> <span class="o">*</span><span class="n">p</span><span class="p">,</span>  <span class="kt">int</span> <span class="o">*</span><span class="n">q</span><span class="p">,</span>  <span class="kt">double</span><span class="o">*</span> <span class="n">means</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">O</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">A</span><span class="p">,</span> <span class="kt">double</span> <span class="o">*</span><span class="n">B</span><span class="p">);</span></div><div class='line' id='LC29'><br/></div><div class='line' id='LC30'><span class="cp">#endif</span></div><div class='line' id='LC31'><br/></div><div class='line' id='LC32'><br/></div></pre></div>
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
      <li>&copy; 2013 <span title="0.07135s from github-fe110-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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

