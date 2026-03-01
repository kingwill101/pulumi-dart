// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_fast_l4_profile_fast_l4_args_doc}
/// The set of arguments for ProfileFastL4.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_fast_l4_profile_fast_l4_args_doc}
class ProfileFastL4Args {
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
  final pulumi.Input<String> name;
  /// name of partition
  final pulumi.Input<String>? partition;
  /// Specifies the amount of data the BIG-IP system can accept without acknowledging the server. The default is 0 (zero).
  final pulumi.Input<int>? receiveWindowsize;
  /// Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK).The default is `5 seconds`.
  final pulumi.Input<String>? tcpHandshakeTimeout;

  /// Creates a new [ProfileFastL4Args].
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
  ProfileFastL4Args({
    pulumi.Output<int>? clientTimeout,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? explicitflowMigration,
    pulumi.Output<String>? hardwareSyncookie,
    pulumi.Output<String>? idleTimeout,
    pulumi.Output<String>? iptosToclient,
    pulumi.Output<String>? iptosToserver,
    pulumi.Output<String>? keepaliveInterval,
    pulumi.Output<String>? lateBinding,
    pulumi.Output<String>? looseClose,
    pulumi.Output<String>? looseInitiation,
    required pulumi.Output<String> name,
    pulumi.Output<String>? partition,
    pulumi.Output<int>? receiveWindowsize,
    pulumi.Output<String>? tcpHandshakeTimeout,
  }) :
      clientTimeout = pulumi.Input.asOptionalInput<int>(clientTimeout),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      explicitflowMigration = pulumi.Input.asOptionalInput<String>(explicitflowMigration),
      hardwareSyncookie = pulumi.Input.asOptionalInput<String>(hardwareSyncookie),
      idleTimeout = pulumi.Input.asOptionalInput<String>(idleTimeout),
      iptosToclient = pulumi.Input.asOptionalInput<String>(iptosToclient),
      iptosToserver = pulumi.Input.asOptionalInput<String>(iptosToserver),
      keepaliveInterval = pulumi.Input.asOptionalInput<String>(keepaliveInterval),
      lateBinding = pulumi.Input.asOptionalInput<String>(lateBinding),
      looseClose = pulumi.Input.asOptionalInput<String>(looseClose),
      looseInitiation = pulumi.Input.asOptionalInput<String>(looseInitiation),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      receiveWindowsize = pulumi.Input.asOptionalInput<int>(receiveWindowsize),
      tcpHandshakeTimeout = pulumi.Input.asOptionalInput<String>(tcpHandshakeTimeout);

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
      'name': name,
      'partition': ?partition,
      'receiveWindowsize': ?receiveWindowsize,
      'tcpHandshakeTimeout': ?tcpHandshakeTimeout,
    };
  }

  factory ProfileFastL4Args.fromMap(Map<String, dynamic> map) {
    return ProfileFastL4Args(
      clientTimeout: map['clientTimeout'] == null ? null : pulumi.Output.create<int>(map['clientTimeout'] as int),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      explicitflowMigration: map['explicitflowMigration'] == null ? null : pulumi.Output.create<String>(map['explicitflowMigration'] as String),
      hardwareSyncookie: map['hardwareSyncookie'] == null ? null : pulumi.Output.create<String>(map['hardwareSyncookie'] as String),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<String>(map['idleTimeout'] as String),
      iptosToclient: map['iptosToclient'] == null ? null : pulumi.Output.create<String>(map['iptosToclient'] as String),
      iptosToserver: map['iptosToserver'] == null ? null : pulumi.Output.create<String>(map['iptosToserver'] as String),
      keepaliveInterval: map['keepaliveInterval'] == null ? null : pulumi.Output.create<String>(map['keepaliveInterval'] as String),
      lateBinding: map['lateBinding'] == null ? null : pulumi.Output.create<String>(map['lateBinding'] as String),
      looseClose: map['looseClose'] == null ? null : pulumi.Output.create<String>(map['looseClose'] as String),
      looseInitiation: map['looseInitiation'] == null ? null : pulumi.Output.create<String>(map['looseInitiation'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      receiveWindowsize: map['receiveWindowsize'] == null ? null : pulumi.Output.create<int>(map['receiveWindowsize'] as int),
      tcpHandshakeTimeout: map['tcpHandshakeTimeout'] == null ? null : pulumi.Output.create<String>(map['tcpHandshakeTimeout'] as String),
    );
  }
}

