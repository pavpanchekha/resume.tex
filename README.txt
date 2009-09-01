The idea for these classes came from
http://www.lifeclever.com/give-your-resume-a-face-lift/
and most of the code is based at least in part on the res.cls class available at
http://www.rpi.edu/dept/arc/training/latex/resumes/
which is where all of the test files came from.

Bugs and TeX wierdness are explained below:

1. Can I use this with regular TeX?

No

2. When I use \dates on the line before a \withright, the spacing between
paragraphs disappears.

Yes, I know. Use \withright{}{}{} on the line right after the \dates to fix that.

3. It looks ugly.

Then why are you using it?
