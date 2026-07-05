This repo is for generating applications and filling forms for job applications.
The following directories describe all the required info about the applicant:
CV files
Applications (including previous applications for reference)

All future applications and forms should be filled using info available about 
the candidate from this repo. 
NEVER hallucinate or make up infomation about the candidate.

# How to create an application #
A job application should have atleast the following files:
job_description.md
forms.md

And once completed it will also include:
application.md

The forms.md shows the forms required to be filled in for the given application.
An application.md is the final result for each application. This shows in final 
result of the application IE the completed application forms from forms.md.
If an Application.md does not exist start by deriving it from the template at
Templates/application.md

All the other files under each application directory in Applications/ can be
used as a style guide on how to fill out this current application.

If there is not enough information about the candidate available to fill out a
given form, stop and notify the user.

If there is only a little infomation about a form requirement, keep it brief, so it is obivious to the user that more infomation is needed there.

# Improving #
If the user provides a new experience/technical ability, ALWAYS maintain a verbatim copy of this in the dir Experiences/. This is so future agents refer back to this. Never put reworded infomation in the CV files or Experiences/ directories.

NEVER EVER edit old completed applications. They are just for reference.

If the user provides new instructions about how to improve the workflow, you may edit this agents.md file. Although only ever do this if you are sure this is an improvement.

# Style # 
Be as concise as possible when you can. Try to follow the STAR methodology:
Situation: What was going on in the scene when this event took place?
Task: What was your responsibility? What did you own?
Action: What did you do?
Result: What did you accomplish? (Quantify it!)

Avoid, except when absolutely neccesary, repitition in 3s, this makes it very clearly written by AI, e.g:
Manual generation was slow, inconsistent, and difficult to trace across releases.
 
# Corrections #
Be careful when corrections are requested by the user that only the area of required change is edited and other locations are not accidently changed. This is because the user will be making changes to the documents at the same time as an agent.
