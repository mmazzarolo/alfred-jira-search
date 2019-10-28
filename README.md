# alfred-jira-search
An Alfred workflow to search for Jira tickets

<p align="center" margin-bottom="0">
  <img width="520" height="auto" src="./.github/jira-multi.png" /> 
</p>

<p align="center" margin-bottom="0">
  <img width="520" height="auto" src="./.github/jira-single.png" /> 
</p>

The workflow is triggered by the **jira** keyword, followed up by the search query.  

Under the hood the workflow uses the [`/rest/api/3/issue/picker`](https://developer.atlassian.com/cloud/jira/platform/rest/v3/?utm_source=%2Fcloud%2Fjira%2Fplatform%2Frest%2F&utm_medium=302#api-rest-api-3-issue-picker-get) endpoint to return a list of issues matching the Alfred query.  
It's smart enough to return a list of issues if you're query is a word, or a specific issue if your query is a ticket number.  

The workflow setup still has a huge margin for improvement: I haven't built an authentication flow, so it  requires some manual setup (that I abstracted into two workflow environment variables).   

__A `domain` variable__
Part of the Jira URL.  
E.g. `https://${domain}.atlassian.net`). 

__A `header` variable__
HTTP header used in the API requests.  
You should add here your authentication token (JWT or cookie).  
Personally, using the cookie session token is enough for me for now.  
E.g.: `cookie:cloud.session.token=eyJraWQiOiJj...`.  

I'm using the workflow on macOS.  
It also need [jq](https://stedolan.github.io/jq/) to be installed.   