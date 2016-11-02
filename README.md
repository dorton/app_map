<h1>AppMap</h1>

<h2>Clone the Repo

`git clone git@github.com:dorton/app_map.git`

`cd app_map`

<h2>Add data to csv

Open the addresses.csv file and use the example as a guide to fill in all of you data. Don't worry about the column marked lat and lng. `process.rb` will take care of that for us.

<h2>Run the ruby script

in terminal, run `ruby process.rb`. If may take a bit depending on the amount of address that need to be geocoded.

<h2>Create a gh-pages branch and push files

After running `process.rb`, we should have a working map that is `index.html`.  You can open that file in your browser to make sure that everything looks ok.  If so, we will want to create a branch and push the index and leaflet js files to it.

In terminal:
`git checkout -b gh-pages`

`git add index.html leaflet-heat.js`

`git commit -am "adds index and js files"`

`git push origin gh-pages`

Now you will be able to go to http://GITHUBUSERNAME.github.io/app_map and see your map live.

![](http://i.giphy.com/jADK27n0qKxW0.gif)
