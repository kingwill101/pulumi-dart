// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileFastL4 resources.
class ProfileFastL4State {
  /// Specifies late binding client timeout in seconds. This setting specifies the number of seconds allowed for a client to transmit enough data to select a server when late binding is enabled. If it expires timeout-recovery mode will dictate what action to take.
  final pulumi.Input<int>? clientTimeout;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Enables or disables late binding explicit flow migration that allows iRules to control when flows move from software to hardware. Explicit flow migration is disabled by default hence BIG-IP automatically migrates flows from software to hardware.
  final pulumi.Input<String>? explicitflowMigration;
  /// Enables or disables hardware SYN cookie support when PVA10 is present on the system. Note that when you set the hardware syncookie option to enabled, you may also want to set the following bigdb database variables using the "/sys modify db" command, based on your requirements: pva.SynCookies.Full.ConnectionThreshold (default: 500000), pva.SynCookies.Assist.ConnectionThreshold (default: 500000) pva.SynCookies.ClientWindow (default: 0). The default value is disabled.
  final pulumi.Input<String>? hardwareSyncookie;
  /// Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  final pulumi.Input<String>? idleTimeout;
  /// Specifies an IP ToS number for the client side. This option specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to clients. The default value is 65535 (pass-through), which indicates, do not modify.
  final pulumi.Input<String>? iptosToclient;
  /// Specifies an IP ToS number for the server side. This setting specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to servers. The default value is 65535 (pass-through), which indicates, do not modify.
  final pulumi.Input<String>? iptosToserver;
  /// Specifies the keep alive probe interval, in seconds. The default value is disabled (0 seconds).
  final pulumi.Input<String>? keepaliveInterval;
  /// Enables intelligent selection of a back-end server or pool, using an iRule to make the selection. The default is `disabled`.
  final pulumi.Input<String>? lateBinding;
  /// Specifies, when checked (enabled), that the system closes a loosely-initiated connection when the system receives the first FIN packet from either the client or the server. The default is disabled.
  final pulumi.Input<String>? looseClose;
  /// Specifies, when checked (enabled), that the system initializes a connection when it receives any TCP packet, rather that requiring a SYN packet for connection initiation. The default is disabled. We recommend that if you enable the Loose Initiation option, you also enable the Loose Close option.
  final pulumi.Input<String>? looseInitiation;
  /// Name of the LTM fastL4 Profile.The full path is the combination of the `partition + name` of the resource (For example `/Common/my-fastl4profile`) or  `partition + directory + name` of the resource  (example: `/Common/test/my-fastl4profile`)
  final pulumi.Input<String>? name;
  /// name of partition
  final pulumi.Input<String>? partition;
  /// Specifies the amount of data the BIG-IP system can accept without acknowledging the server. The default is 0 (zero).
  final pulumi.Input<int>? receiveWindowsize;
  /// Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK).The default is `5 seconds`.
  final pulumi.Input<String>? tcpHandshakeTimeout;

  /// Creates a new [ProfileFastL4State].
  /// [clientTimeout] Specifies late binding client timeout in seconds. This setting specifies the number of seconds allowed for a client to transmit enough data to select a server when late binding is enabled. If it expires timeout-recovery mode will dictate what action to take.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [explicitflowMigration] Enables or disables late binding explicit flow migration that allows iRules to control when flows move from software to hardware. Explicit flow migration is disabled by default hence BIG-IP automatically migrates flows from software to hardware.
  /// [hardwareSyncookie] Enables or disables hardware SYN cookie support when PVA10 is present on the system. Note that when you set the hardware syncookie option to enabled, you may also want to set the following bigdb database variables using the "/sys modify db" command, based on your requirements: pva.SynCookies.Full.ConnectionThreshold (default: 500000), pva.SynCookies.Assist.ConnectionThreshold (default: 500000) pva.SynCookies.ClientWindow (default: 0). The default value is disabled.
  /// [idleTimeout] Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  /// [iptosToclient] Specifies an IP ToS number for the client side. This option specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to clients. The default value is 65535 (pass-through), which indicates, do not modify.
  /// [iptosToserver] Specifies an IP ToS number for the server side. This setting specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to servers. The default value is 65535 (pass-through), which indicates, do not modify.
  /// [keepaliveInterval] Specifies the keep alive probe interval, in seconds. The default value is disabled (0 seconds).
  /// [lateBinding] Enables intelligent selection of a back-end server or pool, using an iRule to make the selection. The default is `disabled`.
  /// [looseClose] Specifies, when checked (enabled), that the system closes a loosely-initiated connection when the system receives the first FIN packet from either the client or the server. The default is disabled.
  /// [looseInitiation] Specifies, when checked (enabled), that the system initializes a connection when it receives any TCP packet, rather that requiring a SYN packet for connection initiation. The default is disabled. We recommend that if you enable the Loose Initiation option, you also enable the Loose Close option.
  /// [name] Name of the LTM fastL4 Profile.The full path is the combination of the `partition + name` of the resource (For example `/Common/my-fastl4profile`) or  `partition + directory + name` of the resource  (example: `/Common/test/my-fastl4profile`)
  /// [partition] name of partition
  /// [receiveWindowsize] Specifies the amount of data the BIG-IP system can accept without acknowledging the server. The default is 0 (zero).
  /// [tcpHandshakeTimeout] Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK).The default is `5 seconds`.
  const ProfileFastL4State({
    this.clientTimeout,
    this.defaultsFrom,
    this.explicitflowMigration,
    this.hardwareSyncookie,
    this.idleTimeout,
    this.iptosToclient,
    this.iptosToserver,
    this.keepaliveInterval,
    this.lateBinding,
    this.looseClose,
    this.looseInitiation,
    this.name,
    this.partition,
    this.receiveWindowsize,
    this.tcpHandshakeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTimeout': ?clientTimeout,
      'defaultsFrom': ?defaultsFrom,
      'explicitflowMigration': ?explicitflowMigration,
      'hardwareSyncookie': ?hardwareSyncookie,
      'idleTimeout': ?idleTimeout,
      'iptosToclient': ?iptosToclient,
      'iptosToserver': ?iptosToserver,
      'keepaliveInterval': ?keepaliveInterval,
      'lateBinding': ?lateBinding,
      'looseClose': ?looseClose,
      'looseInitiation': ?looseInitiation,
      'name': ?name,
      'partition': ?partition,
      'receiveWindowsize': ?receiveWindowsize,
      'tcpHandshakeTimeout': ?tcpHandshakeTimeout,
    };
  }

  factory ProfileFastL4State.fromMap(Map<String, dynamic> map) {
    return ProfileFastL4State(
      clientTimeout: (() { final guardedValue = map['clientTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explicitflowMigration: (() { final guardedValue = map['explicitflowMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareSyncookie: (() { final guardedValue = map['hardwareSyncookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iptosToclient: (() { final guardedValue = map['iptosToclient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iptosToserver: (() { final guardedValue = map['iptosToserver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepaliveInterval: (() { final guardedValue = map['keepaliveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lateBinding: (() { final guardedValue = map['lateBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      looseClose: (() { final guardedValue = map['looseClose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      looseInitiation: (() { final guardedValue = map['looseInitiation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiveWindowsize: (() { final guardedValue = map['receiveWindowsize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tcpHandshakeTimeout: (() { final guardedValue = map['tcpHandshakeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

