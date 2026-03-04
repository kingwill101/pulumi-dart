// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileTcp resources.
class ProfileTcpState {
  /// Specifies the number of seconds that a connection remains in a LAST-ACK state before quitting. A value of 0 represents a term of forever (or until the maxrtx of the FIN state). The default value is 5 seconds.
  final pulumi.Input<int>? closeWaitTimeout;

  /// Specifies the algorithm to use to share network resources among competing users to reduce congestion. The default is High Speed.
  final pulumi.Input<String>? congestionControl;

  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;

  /// Specifies, when enabled, that the system defers allocation of the connection chain context until the client response is received. This option is useful for dealing with 3-way handshake DOS attacks. The default value is disabled.
  final pulumi.Input<String>? deferredAccept;

  /// Specifies, when checked (enabled), that the system can send fewer than one ACK (acknowledgment) segment per data segment received. By default, this setting is enabled.
  final pulumi.Input<String>? delayedAcks;

  /// Enabling this setting allows TCP to assume a packet is lost after fewer than the standard number of duplicate ACKs, if there is no way to send new data and generate more duplicate ACKs.
  final pulumi.Input<String>? earlyRetransmit;

  /// When enabled, permits TCP Fast Open, allowing properly equipped TCP clients to send data with the SYN packet. Default is `enabled`. If `fast_open` set to `enabled`, argument `verified_accept` can't be set to `enabled`.
  final pulumi.Input<String>? fastOpen;

  /// Specifies the number of seconds that a connection is in the FIN-WAIT-2 state before quitting. The default value is 300 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state).
  final pulumi.Input<int>? finwait2timeout;

  /// Specifies the number of seconds that a connection is in the FIN-WAIT-1 or closing state before quitting. The default value is 5 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state). You can also specify immediate or indefinite.
  final pulumi.Input<int>? finwaitTimeout;

  /// Specifies the number of seconds that a connection is idle before the connection is eligible for deletion. The default value is 300 seconds.
  final pulumi.Input<int>? idleTimeout;

  /// Specifies the initial congestion window size for connections to this destination. Actual window size is this value multiplied by the MSS (Maximum Segment Size) for the same connection. The default is 10. Valid values range from 0 to 64.
  final pulumi.Input<int>? initialCongestionWindowsize;

  /// Specifies the keep alive probe interval, in seconds. The default value is 1800 seconds.
  final pulumi.Input<int>? keepaliveInterval;

  /// Specifies whether the system applies Nagle's algorithm to reduce the number of short segments on the network.If you select Auto, the system determines whether to use Nagle's algorithm based on network conditions. By default, this setting is disabled.
  final pulumi.Input<String>? nagle;

  /// Name of the LTM TCP Profile,name should be `full path`. The full path is the combination of the `partition + name` (example: /Common/my-pool ) or  `partition + directory + name` of the resource  (example: /Common/test/my-pool )
  final pulumi.Input<String>? name;

  /// name of partition
  final pulumi.Input<String>? partition;

  /// Specifies the proxy buffer level, in bytes, at which the receive window is closed.
  final pulumi.Input<int>? proxybufferHigh;

  /// Specifies the maximum advertised RECEIVE window size. This value represents the maximum number of bytes to which the RECEIVE window can scale. The default is 65535 bytes.
  final pulumi.Input<int>? receiveWindowsize;

  /// Specifies the SEND window size. The default is 131072 bytes.
  final pulumi.Input<int>? sendBuffersize;

  /// Enabling this setting allows TCP to send a probe segment to trigger fast recovery instead of recovering a loss via a retransmission timeout,By default, this setting is enabled.
  final pulumi.Input<String>? taillossProbe;

  /// Using this setting enabled, the system can recycle a wait-state connection immediately upon receipt of a new connection request instead of having to wait until the connection times out of the wait state. By default, this setting is enabled.
  final pulumi.Input<String>? timewaitRecycle;

  /// Specifies, when checked (enabled), that the system can actually communicate with the server before establishing a client connection. To determine this, the system sends the server a SYN packet before responding to the client's SYN with a SYN-ACK. When unchecked, the system accepts the client connection before selecting a server to talk to. By default, this setting is `disabled`.
  final pulumi.Input<String>? verifiedAccept;

  /// Specifies the timeout in milliseconds for terminating a connection with an effective zero length TCP transmit window.
  final pulumi.Input<int>? zerowindowTimeout;

  /// Creates a new [ProfileTcpState].
  /// [closeWaitTimeout] Specifies the number of seconds that a connection remains in a LAST-ACK state before quitting. A value of 0 represents a term of forever (or until the maxrtx of the FIN state). The default value is 5 seconds.
  /// [congestionControl] Specifies the algorithm to use to share network resources among competing users to reduce congestion. The default is High Speed.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [deferredAccept] Specifies, when enabled, that the system defers allocation of the connection chain context until the client response is received. This option is useful for dealing with 3-way handshake DOS attacks. The default value is disabled.
  /// [delayedAcks] Specifies, when checked (enabled), that the system can send fewer than one ACK (acknowledgment) segment per data segment received. By default, this setting is enabled.
  /// [earlyRetransmit] Enabling this setting allows TCP to assume a packet is lost after fewer than the standard number of duplicate ACKs, if there is no way to send new data and generate more duplicate ACKs.
  /// [fastOpen] When enabled, permits TCP Fast Open, allowing properly equipped TCP clients to send data with the SYN packet. Default is `enabled`. If `fast_open` set to `enabled`, argument `verified_accept` can't be set to `enabled`.
  /// [finwait2timeout] Specifies the number of seconds that a connection is in the FIN-WAIT-2 state before quitting. The default value is 300 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state).
  /// [finwaitTimeout] Specifies the number of seconds that a connection is in the FIN-WAIT-1 or closing state before quitting. The default value is 5 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state). You can also specify immediate or indefinite.
  /// [idleTimeout] Specifies the number of seconds that a connection is idle before the connection is eligible for deletion. The default value is 300 seconds.
  /// [initialCongestionWindowsize] Specifies the initial congestion window size for connections to this destination. Actual window size is this value multiplied by the MSS (Maximum Segment Size) for the same connection. The default is 10. Valid values range from 0 to 64.
  /// [keepaliveInterval] Specifies the keep alive probe interval, in seconds. The default value is 1800 seconds.
  /// [nagle] Specifies whether the system applies Nagle's algorithm to reduce the number of short segments on the network.If you select Auto, the system determines whether to use Nagle's algorithm based on network conditions. By default, this setting is disabled.
  /// [name] Name of the LTM TCP Profile,name should be `full path`. The full path is the combination of the `partition + name` (example: /Common/my-pool ) or  `partition + directory + name` of the resource  (example: /Common/test/my-pool )
  /// [partition] name of partition
  /// [proxybufferHigh] Specifies the proxy buffer level, in bytes, at which the receive window is closed.
  /// [receiveWindowsize] Specifies the maximum advertised RECEIVE window size. This value represents the maximum number of bytes to which the RECEIVE window can scale. The default is 65535 bytes.
  /// [sendBuffersize] Specifies the SEND window size. The default is 131072 bytes.
  /// [taillossProbe] Enabling this setting allows TCP to send a probe segment to trigger fast recovery instead of recovering a loss via a retransmission timeout,By default, this setting is enabled.
  /// [timewaitRecycle] Using this setting enabled, the system can recycle a wait-state connection immediately upon receipt of a new connection request instead of having to wait until the connection times out of the wait state. By default, this setting is enabled.
  /// [verifiedAccept] Specifies, when checked (enabled), that the system can actually communicate with the server before establishing a client connection. To determine this, the system sends the server a SYN packet before responding to the client's SYN with a SYN-ACK. When unchecked, the system accepts the client connection before selecting a server to talk to. By default, this setting is `disabled`.
  /// [zerowindowTimeout] Specifies the timeout in milliseconds for terminating a connection with an effective zero length TCP transmit window.
  ProfileTcpState({
    this.closeWaitTimeout,
    this.congestionControl,
    this.defaultsFrom,
    this.deferredAccept,
    this.delayedAcks,
    this.earlyRetransmit,
    this.fastOpen,
    this.finwait2timeout,
    this.finwaitTimeout,
    this.idleTimeout,
    this.initialCongestionWindowsize,
    this.keepaliveInterval,
    this.nagle,
    this.name,
    this.partition,
    this.proxybufferHigh,
    this.receiveWindowsize,
    this.sendBuffersize,
    this.taillossProbe,
    this.timewaitRecycle,
    this.verifiedAccept,
    this.zerowindowTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'closeWaitTimeout': ?closeWaitTimeout,
      'congestionControl': ?congestionControl,
      'defaultsFrom': ?defaultsFrom,
      'deferredAccept': ?deferredAccept,
      'delayedAcks': ?delayedAcks,
      'earlyRetransmit': ?earlyRetransmit,
      'fastOpen': ?fastOpen,
      'finwait2timeout': ?finwait2timeout,
      'finwaitTimeout': ?finwaitTimeout,
      'idleTimeout': ?idleTimeout,
      'initialCongestionWindowsize': ?initialCongestionWindowsize,
      'keepaliveInterval': ?keepaliveInterval,
      'nagle': ?nagle,
      'name': ?name,
      'partition': ?partition,
      'proxybufferHigh': ?proxybufferHigh,
      'receiveWindowsize': ?receiveWindowsize,
      'sendBuffersize': ?sendBuffersize,
      'taillossProbe': ?taillossProbe,
      'timewaitRecycle': ?timewaitRecycle,
      'verifiedAccept': ?verifiedAccept,
      'zerowindowTimeout': ?zerowindowTimeout,
    };
  }

  factory ProfileTcpState.fromMap(Map<String, dynamic> map) {
    return ProfileTcpState(
      closeWaitTimeout: (() {
        final guardedValue = map['closeWaitTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      congestionControl: (() {
        final guardedValue = map['congestionControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultsFrom: (() {
        final guardedValue = map['defaultsFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deferredAccept: (() {
        final guardedValue = map['deferredAccept'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delayedAcks: (() {
        final guardedValue = map['delayedAcks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      earlyRetransmit: (() {
        final guardedValue = map['earlyRetransmit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fastOpen: (() {
        final guardedValue = map['fastOpen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      finwait2timeout: (() {
        final guardedValue = map['finwait2timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      finwaitTimeout: (() {
        final guardedValue = map['finwaitTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      idleTimeout: (() {
        final guardedValue = map['idleTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      initialCongestionWindowsize: (() {
        final guardedValue = map['initialCongestionWindowsize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      keepaliveInterval: (() {
        final guardedValue = map['keepaliveInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nagle: (() {
        final guardedValue = map['nagle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partition: (() {
        final guardedValue = map['partition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxybufferHigh: (() {
        final guardedValue = map['proxybufferHigh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      receiveWindowsize: (() {
        final guardedValue = map['receiveWindowsize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sendBuffersize: (() {
        final guardedValue = map['sendBuffersize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      taillossProbe: (() {
        final guardedValue = map['taillossProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timewaitRecycle: (() {
        final guardedValue = map['timewaitRecycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      verifiedAccept: (() {
        final guardedValue = map['verifiedAccept'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zerowindowTimeout: (() {
        final guardedValue = map['zerowindowTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
