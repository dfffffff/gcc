------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--               G N A T . S O C K E T S . C O N S T A N T S                --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2000-2004 Free Software Foundation, Inc.          --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This package provides target dependent definitions of constant for use
--  by the GNAT.Sockets package (g-socket.ads). This package should not be
--  directly with'ed by an applications program.

--  This is the version for MINGW32 NT

package GNAT.Sockets.Constants is

   --------------
   -- Families --
   --------------

   AF_INET            : constant :=            2; --  IPv4 address family
   AF_INET6           : constant :=            3; --  IPv6 address family

   -----------
   -- Modes --
   -----------

   SOCK_STREAM        : constant :=            1; --  Stream socket
   SOCK_DGRAM         : constant :=            2; --  Datagram socket

   -------------------
   -- Socket errors --
   -------------------

   EACCES             : constant :=        10013; --  Permission denied
   EADDRINUSE         : constant :=        10048; --  Address already in use
   EADDRNOTAVAIL      : constant :=        10049; --  Cannot assign address
   EAFNOSUPPORT       : constant :=        10047; --  Addr family not supported
   EALREADY           : constant :=        10037; --  Operation in progress
   EBADF              : constant :=        10009; --  Bad file descriptor
   ECONNABORTED       : constant :=        10053; --  Connection aborted
   ECONNREFUSED       : constant :=        10061; --  Connection refused
   ECONNRESET         : constant :=        10054; --  Connection reset by peer
   EDESTADDRREQ       : constant :=        10039; --  Destination addr required
   EFAULT             : constant :=        10014; --  Bad address
   EHOSTDOWN          : constant :=        10064; --  Host is down
   EHOSTUNREACH       : constant :=        10065; --  No route to host
   EINPROGRESS        : constant :=        10036; --  Operation now in progress
   EINTR              : constant :=        10004; --  Interrupted system call
   EINVAL             : constant :=        10022; --  Invalid argument
   EIO                : constant :=        10101; --  Input output error
   EISCONN            : constant :=        10056; --  Socket already connected
   ELOOP              : constant :=        10062; --  Too many symbolic lynks
   EMFILE             : constant :=        10024; --  Too many open files
   EMSGSIZE           : constant :=        10040; --  Message too long
   ENAMETOOLONG       : constant :=        10063; --  Name too long
   ENETDOWN           : constant :=        10050; --  Network is down
   ENETRESET          : constant :=        10052; --  Disconn. on network reset
   ENETUNREACH        : constant :=        10051; --  Network is unreachable
   ENOBUFS            : constant :=        10055; --  No buffer space available
   ENOPROTOOPT        : constant :=        10042; --  Protocol not available
   ENOTCONN           : constant :=        10057; --  Socket not connected
   ENOTSOCK           : constant :=        10038; --  Operation on non socket
   EOPNOTSUPP         : constant :=        10045; --  Operation not supported
   EPFNOSUPPORT       : constant :=        10046; --  Unknown protocol family
   EPROTONOSUPPORT    : constant :=        10043; --  Unknown protocol
   EPROTOTYPE         : constant :=        10041; --  Unknown protocol type
   ESHUTDOWN          : constant :=        10058; --  Cannot send once shutdown
   ESOCKTNOSUPPORT    : constant :=        10044; --  Socket type not supported
   ETIMEDOUT          : constant :=        10060; --  Connection timed out
   ETOOMANYREFS       : constant :=        10059; --  Too many references
   EWOULDBLOCK        : constant :=        10035; --  Operation would block

   -----------------
   -- Host errors --
   -----------------

   HOST_NOT_FOUND     : constant :=        11001; --  Unknown host
   TRY_AGAIN          : constant :=        11002; --  Host name lookup failure
   NO_DATA            : constant :=        11004; --  No data record for name
   NO_RECOVERY        : constant :=        11003; --  Non recoverable errors

   -------------------
   -- Control flags --
   -------------------

   FIONBIO            : constant :=  -2147195266; --  Set/clear non-blocking io
   FIONREAD           : constant :=   1074030207; --  How many bytes to read

   --------------------
   -- Shutdown modes --
   --------------------

   SHUT_RD            : constant :=            0; --  No more recv
   SHUT_WR            : constant :=            1; --  No more send
   SHUT_RDWR          : constant :=            2; --  No more recv/send

   ---------------------
   -- Protocol levels --
   ---------------------

   SOL_SOCKET         : constant :=        65535; --  Options for socket level
   IPPROTO_IP         : constant :=            0; --  Dummy protocol for IP
   IPPROTO_UDP        : constant :=           17; --  UDP
   IPPROTO_TCP        : constant :=            6; --  TCP

   -------------------
   -- Request flags --
   -------------------

   MSG_OOB            : constant :=            1; --  Process out-of-band data
   MSG_PEEK           : constant :=            2; --  Peek at incoming data
   MSG_EOR            : constant :=           -1; --  Send end of record
   MSG_WAITALL        : constant :=           -1; --  Wait for full reception
   MSG_NOSIGNAL       : constant :=           -1; --  No SIGPIPE on send
   MSG_Forced_Flags   : constant :=            0;

   --------------------
   -- Socket options --
   --------------------

   TCP_NODELAY        : constant :=            1; --  Do not coalesce packets
   SO_SNDBUF          : constant :=         4097; --  Set/get send buffer size
   SO_RCVBUF          : constant :=         4098; --  Set/get recv buffer size
   SO_REUSEADDR       : constant :=            4; --  Bind reuse local address
   SO_KEEPALIVE       : constant :=            8; --  Enable keep-alive msgs
   SO_LINGER          : constant :=          128; --  Defer close to flush data
   SO_ERROR           : constant :=         4103; --  Get/clear error status
   SO_BROADCAST       : constant :=           32; --  Can send broadcast msgs
   IP_ADD_MEMBERSHIP  : constant :=            5; --  Join a multicast group
   IP_DROP_MEMBERSHIP : constant :=            6; --  Leave a multicast group
   IP_MULTICAST_TTL   : constant :=            3; --  Set/get multicast TTL
   IP_MULTICAST_LOOP  : constant :=            4; --  Set/get mcast loopback

end GNAT.Sockets.Constants;
