// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_udp_app_monitor.dart';
import 'fast_udp_app_pool_member.dart';
import 'fast_udp_app_virtual_server.dart';

/// {@template pulumi_index_fast_udp_app_fast_udp_app_args_doc}
/// The set of arguments for FastUdpApp.
/// {@endtemplate}
/// {@macro pulumi_index_fast_udp_app_fast_udp_app_args_doc}
class FastUdpAppArgs {
  /// Name of the FAST UDP application.
  final pulumi.Input<String> application;
  /// Enables use of FastL4 profiles.
  final pulumi.Input<bool>? enableFastl4;
  /// Name of an existing BIG-IP UDP pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Name of an existing BIG-IP pool.
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP FastL4 or UDP profile.
  final pulumi.Input<String>? existingProfile;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// Irules to attach to Virtual Server.
  final pulumi.Input<List<String>>? irules;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  final pulumi.Input<String>? loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  final pulumi.Input<FastUdpAppMonitor>? monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  final pulumi.Input<String>? persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  final pulumi.Input<String>? persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  final pulumi.Input<List<FastUdpAppPoolMember>>? poolMembers;
  /// Existing security log profiles to enable.
  final pulumi.Input<List<String>>? securityLogProfiles;
  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  final pulumi.Input<int>? slowRampTime;
  /// List of address to be used for FAST-Generated SNAT Pool.
  final pulumi.Input<List<String>>? snatPoolAddresses;
  /// Name of the FAST UDP application tenant.
  final pulumi.Input<String> tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastUdpAppVirtualServer>? virtualServer;
  /// Names of existing VLANs to allow.
  final pulumi.Input<List<String>>? vlansAlloweds;
  /// Names of existing VLANs to reject.
  final pulumi.Input<List<String>>? vlansRejecteds;

  /// Creates a new [FastUdpAppArgs].
  /// [application] Name of the FAST UDP application.
  /// [enableFastl4] Enables use of FastL4 profiles.
  /// [existingMonitor] Name of an existing BIG-IP UDP pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingProfile] Name of an existing BIG-IP FastL4 or UDP profile.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [irules] Irules to attach to Virtual Server.
  /// [loadBalancingMode] A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  /// [monitor] `monitor` block takes input for FAST-Generated Pool Monitor.
  /// [persistenceProfile] Name of an existing BIG-IP persistence profile to be used.
  /// [persistenceType] Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  /// [poolMembers] `pool_members` block takes input for FAST-Generated Pool.
  /// [securityLogProfiles] Existing security log profiles to enable.
  /// [slowRampTime] Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  /// [snatPoolAddresses] List of address to be used for FAST-Generated SNAT Pool.
  /// [tenant] Name of the FAST UDP application tenant.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// [vlansAlloweds] Names of existing VLANs to allow.
  /// [vlansRejecteds] Names of existing VLANs to reject.
  const FastUdpAppArgs({
    required this.application,
    this.enableFastl4,
    this.existingMonitor,
    this.existingPool,
    this.existingProfile,
    this.existingSnatPool,
    this.fallbackPersistence,
    this.irules,
    this.loadBalancingMode,
    this.monitor,
    this.persistenceProfile,
    this.persistenceType,
    this.poolMembers,
    this.securityLogProfiles,
    this.slowRampTime,
    this.snatPoolAddresses,
    required this.tenant,
    this.virtualServer,
    this.vlansAlloweds,
    this.vlansRejecteds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'enableFastl4': ?enableFastl4,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingProfile': ?existingProfile,
      'existingSnatPool': ?existingSnatPool,
      'fallbackPersistence': ?fallbackPersistence,
      'irules': ?irules,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastUdpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastUdpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastUdpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastUdpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'vlansAlloweds': ?vlansAlloweds,
      'vlansRejecteds': ?vlansRejecteds,
    };
  }

  factory FastUdpAppArgs.fromMap(Map<String, dynamic> map) {
    return FastUdpAppArgs(
      application: pulumi.Input.fromValue(map['application'] as String),
      enableFastl4: (() { final guardedValue = map['enableFastl4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      existingMonitor: (() { final guardedValue = map['existingMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingPool: (() { final guardedValue = map['existingPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingProfile: (() { final guardedValue = map['existingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingSnatPool: (() { final guardedValue = map['existingSnatPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackPersistence: (() { final guardedValue = map['fallbackPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      irules: (() { final guardedValue = map['irules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastUdpAppMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistenceProfile: (() { final guardedValue = map['persistenceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceType: (() { final guardedValue = map['persistenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolMembers: (() { final guardedValue = map['poolMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FastUdpAppPoolMember>(guardedValue, (value) => FastUdpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityLogProfiles: (() { final guardedValue = map['securityLogProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slowRampTime: (() { final guardedValue = map['slowRampTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snatPoolAddresses: (() { final guardedValue = map['snatPoolAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenant: pulumi.Input.fromValue(map['tenant'] as String),
      virtualServer: (() { final guardedValue = map['virtualServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastUdpAppVirtualServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlansAlloweds: (() { final guardedValue = map['vlansAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlansRejecteds: (() { final guardedValue = map['vlansRejecteds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

