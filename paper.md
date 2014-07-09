Building Sustainable Software with CSDMS
========================================


The Basic Modeling Interface
----------------------------

The *Basic Modeling Interface* (BMI) is a component-coupling library interface
specification designed by CSDMS (Peckham et al., 2013; Syvitski et al., 2014).
In this context, a component is software that models a particular environmental
process and can be “plugged into” another component. BMI addresses the
interaction of components that operate within a shared memory space by
providing entry points for: component control (initialize, run, and finalize
steps), data access, and metadata. This allows developers to write applications
that connect components to one another to form new models.

Most models require input variables and produce output variables. In a
component-based modeling framework, like CSDMS, a set of components becomes a
complete model when every component is able to obtain the input variables it
needs from another component. The CSDMS Standard Names were developed to
provide a practical solution to this semantic mediation problem (Peckham, 2014;
Syvitski et al., 2014). While the CF Convention Standard Names, which were
introduced in the domain of the ocean and atmosphere model domains, have
somewhat overlapping goals, the CSDMS Standard Names provide a more
comprehensive set of naming rules and patterns for creating unique labels for
model variables that are not specific to any particular modeling domain.

The CSDMS Standard Names are a lingua franca for variable names between model
components. They play an important role in the BMI as they provide a mapping of
a model’s internal variable names to a common language used by the BMI getter
and setter functions.

The CSDMS Standard Names are currently being extended to solid Earth modeling
domains, including geodynamics, seismology, electromagnetic induction and
petrology, in the framework of the “Earth System Bridge” EarthCube project led
by PI Peckham. They also serve as the base for the metadata standard for
numerical models (MMF) which is currently in development within CSDMS.

We are acutely aware of multiple other efforts to provide cross-domain
ontologies in the realm of geosciences. PIs Peckham and Kelbert are involved
with the initial steps in semantic crosswalk development recently initialized
within the EarthCube community that aim to achieve synergy between these
currently divergent metadata ontologies.


Connecting Components with the Web Modeling Tool
------------------------------------------------


