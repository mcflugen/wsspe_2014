# Building Sustainable Software - The CSDMS-2.0 Approach #

## Authors ##
- Eric W. H. Hutton, Community Surface Dynamics Modeling System, Boulder, CO
- Mark D. Piper, Community Surface Dynamics Modeling System, Boulder, CO
- Irina Overeem, Community Surface Dynamics Modeling System, Boulder, CO
- Albert J. Kettner, Community Surface Dynamics Modeling System, Boulder, CO


## The Basic Modeling Interface ##

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


## Reusable Components ##


### The CSDMS Modeling Framework ###


### Connecting Components with the Web Modeling Tool ###

The CSDMS Web Modeling Tool (WMT) is the web-based successor to the desktop
Component Modeling Tool (Peckham et al., 2013). WMT provides a client-side
drag-and-drop graphical interface and a server-side database and application
programming interface (API) that allows users to build and run coupled surface
dynamics models on a high-performance computing cluster (HPCC) from a web 
browser on a desktop, laptop or tablet computer.

With WMT, a user can:
- Select a component model from a list to run in standalone mode,
- Build a coupled model from multiple components organized as nodes of a tree
structure,
- View and edit the parameters for these model components,
- Upload custom input files to the server,
- Save models to a server, where they can be accessed on any Internet-accessible
computer,
- Share saved models with others in the community, and
- Run a model by connecting to a remote HPCC where the components are installed.

Although WMT is web-based, the building and configuration of a model can be
done offline.  Reconnection is necessary only when saving a model and
submitting it for a run.

## Digital Object Identifiers for Numerical Models ##

CSDMS encourages and supports
the effort of developers to provide their numerical models as truly open source
(Ince et al., 2012). All code in CSDMS is open source. Source code exposes the
scientific hypotheses embodied in a numerical model. Solutions to a set of
equations can take numerous forms, each with their pyramid of assumptions and
limitations. Code transparency allows for full peer review and replication of
results — the foundation of modern science. Code transparency also allows for
reuse in new and clever ways, and reduces redundancy. At the same time CSDMS
strives to ensure that model developers receive recognition for their work, even
when code is submitted which is not (yet) described in a scientific journal.
Therefore CSDMS has adopted the Digital Object Identifier (DOI). The DOI system
provides a unique identification to content that is available on digital
networks (Paskin, 2010). The DOI system was initiated in 1997 and contained
mainly DOIs to publishing applications. Since 2005 DOIs were also made available
for research data (Paskin, 2005). CSDMS appears to be the first to assign
Digital Object Identifiers (DOIs) to numerical source code, as of 2013. The
advantages of adopting a DOI system for models are:
- Guarantee credit to a model developer.
- Easily reuse and replicate research as other researchers can directly locate a
referenced model.
- Providing a higher visibility, as content with a DOI is 5 times more likely to
deliver active links than content without.
- Giving the opportunity to for example funding agencies to track usage, so to
measure impact.

CSDMS collaborates with Integrated Earth Data Applications
(IEDA), a formal Publication Agent of the DOI system through the German National
Library of Science and Technology, to assign unique identifiers only for those
models that contain metadata and are physically part of the CSDMS repository. An
archive of all numerical models of the CSDMS model repository that have a DOI
together with limited metadata as well as the source code for each model is
provided to IEDA as a backup to guaranty access to model information and its
source code beyond the CSDMS program; a DOI for an object is permanent, whereas
its location and other metadata may change in future.

A new DOI is provided for each new version of a model (i.e. major upgrade of the
source code involving a change in version number). CSDMS uses Apache Subversion,
better known as SVN, for tracking source code versioning and revision control so
that current and past releases and changes can be accessed through the web. As
of March 2014, 109 models within the CSDMS model repository have a DOI. Model
source code can be viewed as ‘data’ and therefore CSDMS endorses citations
defined by DataCite guidelines (Brase, 2010). Following these guidelines, CSDMS
strongly recommends the following structure for citing a model: *ModelDeveloper*
(*PublicationYear*). *ModelName*. *ModelVersion*. *Identifier*.


## Acknowledgements ##

The CSDMS Integration Facility operates under continuing grant 0621695 from the
US National Science Foundation.


## References ##

1. Armstrong, R., Gannon, D., Geist, A., Keahey, K., Kohn, S., McInnes, L.,
   Parker, S., Smolinski, B., 1999.  Toward a common component architecture for
   high-performance scientific computing. In: Proceedings of the 8th IEEE
   International Symposium on High Performance Distributed Computing.
1. Brase, J., 2010. Datacite: A global registration agency for research data,
   Working Paper Series des Rates für Sozial- und Wirtschaftsdaten, No. 149.
1. Campbell, K., Overeem, I., Berlin, M., 2013. Taking it to the Streets: the
   Case for Modeling in the Geosciences Undergraduate Curriculum. Computers
   and Geosciences. 53, 123-128.
1. David, O., Markstrom, S.L., Rojas, K. W., Ahuja, L.R., Schneider, I. W.,
   2002.  The object modeling system. In: Ahuja, L.R., Ma, L., Howell, T.
   (Eds.), Agricultural System Models in Field Research and Technology
   Transfer. Lewis Publisher, CRC Press LLC, pp. 317-331. (Chapter15).
1. Fielding, R. T., 2000. Architectural styles and the design of network-based
   software architectures (Doctoral dissertation, University of California).
1. Fogleman, J., McNeill, K., Krajcik, J., 2011. Examining the effect of
   teachers adaptations of a Middle School Science Inquiry-Oriented Curriculum
   Unit on Student Learning. Journal of Research in Science Teaching,
   48, 2, 149-169.
1. Fowler, M., 2006. GUI Architectures
   <http://martinfowler.com/eaaDev/uiArchs.html>.  Gregerson, J.B., Gijsbers,
   P.J., Westen, S.J.P., 2007.OpenMI: open modeling interface, Journal of
   Hydroinformatics 9 (3), 175-191.
   <http://www.iwaponline.com/jh/009/0175/0090175.pdf>
1. GWT Project, 2010. MVP Architecture
   <http://www.gwtproject.org/articles/mvp-architecture.html>.
1. Hill, C., DeLuca, C., Balaji, V., Suarez M., da Silva, A., 2004. ESMF Joint
   Specification team, 2004. The architecture of the earth system modeling
   framework. Computing in Science and Engineering 6, 18-28.
1. Hug, B., and Krajcik, J.S. (2009). Developing a learning progression for
   scientific modeling: Making scientific modeling accessible and meaningful
   for learners. Journal of Research in Science Teaching, 46(6), 632-654.
1. Ince, D.C., Hatton, L., and Graham-Cumming, J., 2012. The case for open
   computer programs. Nature, 482, 485-488. DOI:10.1038/nature10836
1. Paskin, N., 2005. Digital Object Identifiers for scientific data. Data
   Science Journal, 4, 12-20. DOI: 10.2481/dsj.4.12
1. Paskin, N., 2010. Digital object identifier (DOI) system, in Encyclopedia
   of Library and Information Sciences, 3rd ed. Taylor & Francis.
1. Peckham, S.D., Hutton, E.W.H., Norris, B., 2013. A component-based approach
   to integrated modeling in the geosciences: The design of CSDMS. Computers &
   Geosciences 53, 3-13.
1. Schwarz, C.V., Reiser, B.J., Davis, E.A., Kenyon, L., Achér, A., Fortus, D.,
   Shwartz, Y., Wellman, D., 2008. Google Web Toolkit: Writing Ajax
   Applications Test First.  Better Software Magazine, 26-32.
