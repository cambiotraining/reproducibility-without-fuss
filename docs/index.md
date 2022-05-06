--- 
title: "Reproducibility without fuss"
author: "Martin van Rongen"
date: "2022-05-06"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: path to the social sharing image like images/cover.jpg
description: "These are the supporting materials for the Reproducibility without fuss course, Bioinformatics Training Facility, Cambridge University." 
---



# Introduction

## Objectives
:::objectives
* Understand the importance of reproducibility in the scientific method
* Explore practical ways to aid reproducibility
:::

## Purpose and aim
Reproducibility of experiments is an important part of the scientific method. It goes all the way back to the 17th century, when the Irish chemist Robert Boyle was studying the concept of vacuum - a rather controversial topic at the time.

Boyle argued that facts will emerge when an experiment is repeated over and over again - with consistent outcomes, presumably.

Here we are looking at various causes of irreproducibility and, importantly, we look at how we can avoid this happening in the first place.

## Causes of irreproducibility

### Not a true result

**Publication bias**

This happens because the research community tends to favour publishing statistically significant results. It's generally more difficult to publish non-significant results, even if the experimental design, data collection and subsequent analysis are sound.

**HARKing**

This is Hypothesising After the Results are Known. What happens is that researchers gather data, do an analysis and then formulate a hypothesis based on these data.

**p-Hacking / selective reporting**

This occurs when researchers perform multiple statistical analyses on their data and then report the ones that produce statistically significant results.

**Low statistical power**

Here a statistically significant result may be found, but the power of the analysis may be low. If there is low statistical power, then the likelihood of a statistical test detecting a true effect when there is one, is low.

**Faulty data analysis**

This happens. A lot. We're only human - there are many reasons why this can occur, for example poor practice (sorting the wrong column in Excel), lack of knowledge, errors in code etc.

**Poor experimental design**

The outcome of an experiment can only be robust if there is a decent experimental design. Problems with experimental design can include low subject numbers (leading to poor statistical power), lack of controls, inaccurate measurements, measuring the wrong thing etc.

**Fraud**

This is what people often think of when it comes to irreproducible research. Hopefully it is less common than it may seem to be. In a way there is probably a bias towards reporting cases of fraud, as opposed to genuine mistakes by researchers. A lot of the causes we covered above can actually contribute to a researcher committing fraud. Academic pressures are real and the need to publish, preferably in high-impact journals, can definitely contribute to this.

**Bad luck**

A tough one. You can have the best experimental design in the world, multiple replicates, high sample sizes, good statistical power but... you're just plain unlucky and you picked up a result that others cannot reproduce.

### Insufficient information

**Data unavailable**

I hate it when this happens. It reduces a scientific article to "you just have to take my word for it". It is not just the researchers who are to blame here - editors and journals should insist on data being available.

**Methods unavailable / not clear**

Unavailable methods are unnecessary, they can be picked up at the review stage. Unclear methods are a bit trickier because what may be blatantly obvious to the original researcher, might be vague to others. Let your colleagues proof-read, preferably that person you have coffee with on Mondays but knows nothing about your research...

**Code unavailable**

Again, unnecessary. Editors, reviewers and journals should insist on this. It could be that there is no code, because the analysis was done in Excel for example. Although that is far from ideal, then at least the spreadsheet should be available for others to check.

### Issues with replication

**Poor reproduction methods**

This is often linked to unclear methods. You can't reproduce something if it isn't clear how the experiment was done in the first place! Other issues arise when a unique piece of hardware was used to generate the data (not everyone has a hadron collider under their lawn), but there independent researchers could use the same machinery. Or perhaps the work is extremely fiddly and requires a lot of skill and knowledge, that other researcher may not have.

**Variability in standard reagents**

One of many variables in an experimental setup that can cause havoc. 

## Solutions to irreproducibility

### The right stuff

**Ethical integrity**

Don't go into science if you don't care about this. Or into anything, really.

**Have the right knowledge**

Make sure you have sufficient understanding of statistics and experimental design to perform and analyse your experiment properly. If you don't, then educate yourself or collaborate with somebody who can assist in the areas where your knowledge is lacking.

**Better oversight**

This can and should happen at every level. Group leaders, editors, reviewers, colleagues, research assistants etc all play a role in getting from an idea to a published result. At each stage there is opportunity to reflect and ask if what is being done happens correctly.

**Better data management**

Be organised. Be transparent. Use non-proprietary data formats. Make data freely available.

### Making reproducing easy

**Organisation**

Being organised not only makes reproducing research easier, it also avoids problems in the first place. We'll see an example in the exercise of this chapter where things are... not organised.

Organising your research and analysis occurs at all kinds of levels, such as the data that you generate or pull in externally; the scripts you create to analyse the data (the code within them needs to be organised); the processed files and images you generate etc.

**Documentation**

Write things down! Be clear and concise! It really does help. I can be rather forgetful, which is actually really helpful in this case. Because I don't trust myself to remember things, I make sure I write them down (in an organised way). The way I see it, if _I_ can reproduce my own research and thoughts, then others should be able to as well.

Documentation is a pretty broad topic, which we'll cover in more detail. But it includes documenting your data (meta data on location, subjects, units etc), documenting your methods, analysis, code, images and more.

**Automation**

Not only is it efficient to automate processes, it also makes data gathering and analysis less error-prone. Imagine having to generate graphs for 10 different groups, using Excel and selecting the data by hand... how likely will it be you'll accidentally select the wrong cells?

Much better to make sure your data is in the right format and you use a programming language such as R or Python to sort things out for you. Yes, the initial learning curve might be a bit steeper than just using what you know, but in the end you'll save lots of time - and making your analysis more robust in the process.

**Publication**

A bit of a no-brainer, because this is what most researchers are after anyway. There is little point doing lots of amazing research if you're not communicating it (OK, I'm a bit guilty of that, with data from 2015 still waiting to be written up...). Some projects just take years, but the main thing is to always aim to have your results published. And this is where the dialogue with the journals comes in play: it shouldn't just be about publishing statistically significant results. It should be about **reproducible results**, also when they are null-results.

## Exercise: forensic science {#forensic-science}
:::exercise
Download the data for this course and look at the `data/forensic-science` folder. Try to answer the following questions:

Look through the folder and try to answer the following questions about the project:

1. What are the conclusions of this study?
2. When was this study performed?
3. What are the questions that this study is trying to answer?
4. Which files are the data? Which files are the analysis? the output?
5. How could we make this easier?


<details><summary>Answer</summary>
The data are of course a mess. This is _not_ how you would like to tackle your analysis!

1. There are no clear conclusions associated with the study (it's not even clear which paper these data belong to).

We have two images: `graph.png`, which seems to show that life expectancy (of what?) increases over time. The trend is not the same in `draft_graph.docx`, so they're unlikely to be the same data set.
2. Not a clue. The only thing we can say is that it is after 2010, since the most recent data come from this year.
3. Probably the following:

* What is the trend in average life expectancy across countries, over time?
* What is the average life expectancy over time in Oceania?

4. We have the following: 

* **Files:** `data.xls` (probably how the data were collected, multiple worksheets); `data1_full.csv` (probably the data used to read into R); `data1.xls` (just the Gapminder worksheet); `oceania.csv` (the data for Oceania only)
* **Analysis:** `final_analyses.R`, `final_analyses1.R` and `rev1_final_analyses.R` all have very similar analyses, with different kind of filtering/subsetting and location of files (absolute/relative paths)
* **Output:** `graph.png` and `draft_graph.docx` show different things. `graph.png` has information on Canada (if that is the one generated by the script). The draft graph in the Word document is unclear, it seems like it was generated in Excel.

5. Sack the researcher who did this. More seriously, teach the researcher some good scientific practices. Some of the things we could do differently is:

* provide a README file with information on the data: when was it collected, by whom, what are the units etc
* organise the data and analysis: have a `raw` folder for the raw data, `processed` folder for data files that have been changed/subsetted (using scripts!). Keep the scripts in a `scripts` folder and use an `output` folder for images
* use leading numbers for the analysis files, e.g. `01_process-data.R`; `02_data-exploration.R`, `03_graphs.R` etc
* have commenting in the script, explaining what is being done; consider using some kind of markdown language (e.g. RMarkdown) to combine a narrative with code
* write down methods (e.g. statistical analyses) and conclusions in a separate file
</details>
:::

## Key points

:::keypoints

* Reproducibility underpins the scientific method: being able to consistently obtain the same results for an experiments gives weight to the credibility of the outcome.

* We can influence reproducibility at every stage of the scientific method, by documenting our hypotheses and thought processes that led to them; by providing clear experimental design guidance and methods; by making our data and data analysis available an interpretable to others and finally, by letting other peer-review our research.
:::

