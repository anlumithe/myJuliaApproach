@def title = "My Franklin Sandbox"
@def hasmath = true
@def hascode = true
# 🚀 Our first workshop
Joining forces with our [Cluster of Excellence](https://www.machinelearningforscience.de/en/) colleagues from [Machine Learning in Science](https://mackelab.org) and dear [Helmholtz AI](https://www.helmholtz.ai/themenmenue/our-research/consultant-teams/helmholtz-ai-consultants-hzdr/index.html) colleagues from Dresden, Jülich and Geesthach, we held our first international workshop, around the topic of simulation-based inference.
During three intense days combining lectures, tutorials, and hands-on exercises, we worked together with simulation scientists from all around the world including various institutions in the UK, EMBL, Fermilab, Michigan, Paris, Leipzig, and Tübingen.
**Simulation-based inference**
Numerical simulators are essential to modern science. With the right parameter values, simulator code can predict the weather, give insight on an exploding star, or forecast how many emergency beds will be needed during epidemic outbreaks. But how to find those *right parameters*? Simulation-based inference uses recent advances in machine learning to identify those parameters that are compatible with the observations — often not just one set, but several!

![Picture](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e9e079b2-32ec-45c3-a6f2-d2905d3ecaed/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20211207%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211207T101006Z&X-Amz-Expires=3600&X-Amz-Signature=254456d6c5ae5808f6a07fbbc2c08e2f5b85e2b14d0e37534e010d411f3df9d7&X-Amz-SignedHeaders=host&x-id=GetObject)
We had simulators on....
⇌ aerosol dispersal in climate models,
⇌ brain connectivity,
⇌ active hair bundles in the ear,
⇌ distribution of cosmic dark matter,
⇌ neutron-star mergers,
⇌ cell migration, 
and more!

## What did we teach?
On **Day 1, Álvaro** took us on a journey towards likelihood-free parameter inference in mechanistic simulators. The need for simulation-based inference was reinforced by watching ABC rejecting samples and further motivated with an deep-dive into an application from neuroscience by **Pedro**.
**Day 2** built the theoretical and conceptual foundation for SBI. In instructive step-by-step tutorials, **Michael** and **David** took us from basic conditional density estimation all the way to state-of-the-art neural techniques.
On **Day 3** we were ready to get to the heart of the workshop: the ``` sbi``` toolbox. **Jan** and **Jan-Matthis** covered all aspects relevant to the user in presentations and hands-on practicals ranging from the basic usage over benchmarking neural methods and ABC to pathologies that may arise and how to troubleshoot. The workshop concluded with an extensive open session in which we got to integrate our own simulators with ``` sbi``` with one-on-one advice by the instructors. The enthusiasm by the audience sparked impromptu bonus sessions on model comparison and normalizing flows by **Jan** and **Michael**.


⬇️ Find all lectures and tutorials (under a [free content license](https://creativecommons.org/licenses/by-sa/4.0/)) in our [workshop page](https://mlcolab.org/sbi-workshop)!
## What did we learn?
Well, first the workshop was *fun*. We had 14 extremely engaged participants whose smart questions pushed our instructors to the limits of today's research in simulation-based inference. For those who did not make it, fret not — we are thinking already about future editions!  we got very encouraging feedback and yet some good suggestions to improve.
We are particularly happy about our collegial workshop team and the encouraging feedback we got from participants. 
Our fellow instructors and organizers were a phenomenal source of energy and good spirits. Our indefatigable [Peter Steinbach](https://twitter.com/psteinb_) from Helmholtz Zentrum Dresden-Rossendorf was the ideator and voice of experience. [Álvaro Tejero-Cantero](https://twitter.com/alvorithm), [Pedro Gonçalves](https://ppjgoncalves.github.io/), [Michael Deistler](https://michaeldeistler.github.io/), [David Greenberg, ](https://twitter.com/dvdgbg)[Jan Bölts](https://twitter.com/janfiete), [Jan-Matthis Lueckmann](https://www.jan-matthis.de/) took up the challenge and developed specific content for the workshop's learning goals. [Daniela Huppenkothen](https://twitter.com/Tiana_Athriel) contributed a structured selection process, and many useful tips (and fun tweets!). [Stefan Kesselheim](https://www.helmholtz.ai/themenmenue/our-research/consultant-teams/helmholtz-ai-consultants-fzj/index.html) from HAICORE unleashed an arsenal of computing power from the Jülich supercomputing facility. On the [ML colab side](https://mlcolab.org/team), Álvaro took the lead of the organization, which would not have been possible without [Stefan Wezel](https://github.com/wastedsummer) with his insuperable good humor and [Elena Sizana](https://mlcolab.org/Elena-Sizana-1d1c2165beb0467f8810c78c581417b0) keeping the wheels turning. [Alex Gessner](https://twitter.com/alpiges) reviewed *all *the content, improving flow and consistency across the board. 
We can definitely recommend to collect daily feedback in anonymous pads ([day 1](https://notes.desy.de/FUwV3KniQUiQrRWdH9sb1w?view), [day 2](https://notes.desy.de/O4OwuQMIQ0CJDDeXEn013w?edit#), and [day 3](https://notes.desy.de/0rEpuCBnSi-6kB5KaZl8IA?view#Day-3-Feedback).). Discussing it right at the beginning every day helped us react online to the students' needs. As for the final feedback survey, we received a 5/5 overall rating from all 11 respondents; 10/11 would recommend (1 undecided). Quite surprisingly, after three days, everybody was still onboard (8 found the length just right) and 3 even wanted more. Some suggested additional topics (a full discussion of normalizing flows, for example), and we will certainly consider that in the future depending on the backgrounds of the audience. The full ratings and some quite nice sentiments are [available here](https://unitc-my.sharepoint.com/:x:/g/personal/qzbsi01_cloud_uni-tuebingen_de/Ec5Flq650n9GrziaJBO5RioBIfJjMjUw84L6hNuH_gj2Dg?e=Xzk99L). 
Online events come with their own difficulties but there are also upsides — we had good discussions on our online SBI channel in Zulip, which provides a platform for exchanges on simulation-based inference beyond the workshop. Do write to us if you are interested in joining the community.
## What next?
We are excited about the new science that this workshop might help to boost!
If you missed the workshop, all you need to get started is the [sbi toolkit](https://github.com/mackelab/sbi). Follow the tutorials of the package, test our workshop examples, or be bold and try it with your own simulator!
As for us, after many coordinating sessions over five months and long hours preparing materials and infrastructure, we're ready for some rest.
Until the next edition: may all your broad priors refine into well-calibrated posteriors,

Álvaro Tejero-Cantero, Alex Gessner, and Seth Axen, 
Machine Learning ⇌ Science Colaboratory.

