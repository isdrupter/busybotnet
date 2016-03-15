# busybotnet
---------------

##Offensive & Defensive Security for Embedded Systems

### What is busybotnet?

Busybotnet is a (deviously named) fork of [busybox](https://busybox.net) that aims to make many of the security tools that
are often only found on full systems available their resource lacking counterparts we call embedded devices. With the 
recent surge in popularity of such devices (aka, the explosion of the 'internet of things'), came many, *many* security 
issues. Part of the problem is that it's difficult to implement cryptography tools on systems with limited resources, 
and the rest is caused by incompetent OEM's that never issue updates or bother to patch any of the gaping security holes 
in they're systems. This inevitably leads to the devices being repurpoused by hackers, visa vi botnets... The 
point of this project is to provide all of the security tools a system admin needs to administer embedded devices in one 
static binary (hence the term, "Busybotnet").
