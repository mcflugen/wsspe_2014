# Building Sustainable Software - The CSDMS-2.0 Approach #

## Authors ##

- Eric W. H. Hutton, Community Surface Dynamics Modeling System, Boulder, CO
- Mark D. Piper, Community Surface Dynamics Modeling System, Boulder, CO
- Irina Overeem, Community Surface Dynamics Modeling System, Boulder, CO
- Albert J. Kettner, Community Surface Dynamics Modeling System, Boulder, CO


## The Community Surface Dynamics Modeling System ##

The Community Surface Dynamics Modeling System (CSDMS) (Peckham et al., 2013)
is an NSF-funded project that began in 2007. Its mission is to help a diverse
community of surface dynamics modelers and model users work together toward
common goals and standards. Part of this effort involves creating a repository
of open-source models. Another part involves converting models to plug-and-play
components that can be reused via dynamic linking within the CSDMS framework to
create new models. In building its modeling framework, CSDMS has leveraged
several existing, well-established and open-source software tools. For example,
CSDMS uses three tools from the Common Component Architecture (CCA) toolchain:
Babel, Bocca and Ccaffeine. Babel provides interoperability between components
written in different languages; it currently supports C, C++, Fortran, Java,
and Python. Bocca helps with creating CCA-compliant components and managing CCA
component projects. Ccaffeine is a CCA-compliant framework for linking
components into new applications. All three tools were designed to enable
component-based modeling in an HPC environment, but they can also be used on
desktop systems. CSDMS has developed innovative model/component interfaces for
use with the CCA tools, including the Basic Model Interface (BMI), which uses
the CSDMS Standard Names (both described below) and the framework-level
Component Model Interface (CMI). CSDMS has also developed a web-based client
for its modeling framework (the CSDMS Web Modeling Tool, WMT, described below)
that allows users to compose new models by connecting and configuring
components through a simple, browser-based graphical interface.

In order to realize the full power and benefits of component-based modeling, a
modeling framework like CSDMS needs an efficient mechanism to convert as many
open-source models as possible to reusable plug-and-play components. Since this
necessarily requires some involvement from each model's developer, this
mechanism must be designed to:

- require minimal effort from the model developer,
- allow the model to continue to be used in a stand-alone manner,
- not introduce new dependencies into the model,
- not interfere with the developer's design,
- not require any modeling framework-specific knowledge on the part of the
  developer,
- not require the addition of new code which accommodates the needs of other
models. 

These requirements became clear during the first few years of the CSDMS project
by working directly with model developers and listening to their concerns and
complaints about early designs and other frameworks. This eventually led to the
innovative design of CSDMS, which can be summarized as follows:


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

The CSDMS Web Modeling Tool (WMT; https://csdms.colorado.edu/wmt) is the
web-based successor to the desktop Component Modeling Tool. WMT is a web
application that provides an Ajax client-side graphical interface (the WMT
client) and a RESTful server-side database and API (the WMT server) that allows
users to build and run coupled Earth system models on a high-performance
computing cluster (HPCC) from a web browser.
WMT was designed with four objectives:

1.  *Accessibility*. As a web-based application, if you have access to the
    Internet, you have access to WMT.
2.  *Integration*. Easily hyperlink from WMT to resources on the CSDMS
    portal—including model documentation, labs, lectures, tutorials and
    movies—or to other resources on the Internet.
3.  *Portability*. WMT has a native JavaScript interface, so it can be
    accessed on any modern web browser, including tablet and mobile
    versions of browsers.
4.  *Maintenance*. Because modern browsers tend to adhere to web
    standards, which lead to fewer cross-compatibility issues than
    operating systems, only one version of WMT needs to be developed
    and maintained.

With WMT, a user can:
1.  select a Common Component Architecture (CCA) component model
    from a list to run in standalone mode;
2.  build a coupled model from multiple CCA components organized as nodes of a
    tree structure;
3.  view and edit the parameters of the model components;
4.  save models to a server, where they can be accessed on any computer
    connected to the Internet;
5.  share saved models with others in the community;
6.  run a model by connecting to a remote HPCC where the components are
    installed.

Although WMT is web-based, the building and configuring of a model can be done
offline. Reconnection is necessary only when saving a model and submitting it
for a run.

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
- Easily reuse and replicate research as other researchers can directly
  locate a referenced model.
- Providing a higher visibility, as content with a DOI is 5 times more likely
  to deliver active links than content without.
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
   Working Paper Series des Rates für Sozialund Wirtschaftsdaten, No. 149.
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
