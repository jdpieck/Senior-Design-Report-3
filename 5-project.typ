#import "bin/template.typ": *
// 6.1) Appropriate tasks identified over 2 quarters __/5.0
// 6.2) Updated Gantt chart for 2 quarters __/5.0
// 6.3) Critical path method analysis __/5.0

== Project Timeline 
Due to the unconventional nature of our project, we had to conduct our design and predicted manufacturing processes with a similar level of unconventionality. @tasks shows the list of tasks for this project as identified at the time of this report being written, including those that have already been completed and those projected to take place next quarter. Now that we have a better understanding of the tasks for manufacturing, troubleshooting, and preparing for the Senior Design Showcase next quarter, our task list from Report 1 has been greatly expanded upon. Newly identified tasks include more detailed descriptions of what we need to manufacture for each subsystem (jig, feed, electrical, etc), and deadlines for materials to submit to the Senior Design Showcase organizers.

Completed tasks have been indicated with a check mark at the end of each line. While the exact order of the Gantt Chart does not match this list, this is due to the presence of overlapping tasks and subtasks in the chart's structure. This is allowable, however, since the flexible nature of Gantt Charts allows for slight adjustments in task deadlines. This allows the list below to still reflect the subsequently presented Gantt Chart.

#include "5.1-tasks.typ"

#page(
  width: auto,
  height: auto,
  footer: none,
  header: none,
  margin: 0pt,

  image("images/GanttChart.pdf", width: 10in) 

)

== Critical Path
It is important to understand the most important tasks for the upcoming quarter in order to ensure our project continues to make steady progress, especially since we intend to manufacture a working prototype to present to our client. The manufacturing critical path has been indicated with the red path on the section of the Gantt Chart shown in @crit-path below. Through this section of the chart, the critical path involves the acquiring of our ordered parts from the bill of materials, modifying the necessary parts, assembling those parts into their corresponding subsystems, then troubleshooting the final prototype once the subsystems are assembled. The process of 3D printing parts and assembling the electrical components aren't considered critical since they can happen at any point during the process of machining components.

#figure(
  image("images/CriticalPath.png"),
caption: [Manufacturing Critical Path Analysis]) 
<crit-path>