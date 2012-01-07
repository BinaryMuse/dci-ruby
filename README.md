DCI in Ruby
===========

DCI, which stands for "data, context and interaction", is a software design model. This model consists of three types of objects:

  * **Data** - describes what the system is. Usually a relatively static data model with relations. They do not contain any application logic, they are only data.
  * **Context** - describes a use case for a system. Determines the objects that need to be involved in a use case and ties them to one or more Roles.
  * **Interaction** - describes what the system does. Implemented as Roles which are played by objects at run time.

In DCI, an actor in a Context is injected with only enough application logic to get the job done. Thus, DCI cleanly separates what the application is (Data) from what it does (Interactions); this is in contrast to, say, a typical Rails application with a skinny-controller-fat-model paradigm.

For more reading, check out (among many others):

  * http://en.wikipedia.org/wiki/Data,_context_and_interaction
  * http://blog.firsthand.ca/2011/10/rails-is-not-your-application.html
  * http://confreaks.net/videos/759-rubymidwest2011-keynote-architecture-the-lost-years