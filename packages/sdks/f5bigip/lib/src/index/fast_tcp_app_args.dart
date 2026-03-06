// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_tcp_app_monitor.dart';
import 'fast_tcp_app_pool_member.dart';
import 'fast_tcp_app_virtual_server.dart';

/// {@template pulumi_index_fast_tcp_app_fast_tcp_app_args_doc}
/// The set of arguments for FastTcpApp.
/// {@endtemplate}
/// {@macro pulumi_index_fast_tcp_app_fast_tcp_app_args_doc}
class FastTcpAppArgs {
  /// Name of the FAST TCP application.
  final pulumi.Input<String> application;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Name of an existing BIG-IP pool.
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  final pulumi.Input<String>? loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  final pulumi.Input<FastTcpAppMonitor>? monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  final pulumi.Input<String>? persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  final pulumi.Input<String>? persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  final pulumi.Input<List<FastTcpAppPoolMember>>? poolMembers;
  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  final pulumi.Input<int>? slowRampTime;
  /// List of address to be used for FAST-Generated SNAT Pool.
  final pulumi.Input<List<String>>? snatPoolAddresses;
  /// Name of the FAST TCP application tenant.
  final pulumi.Input<String> tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastTcpAppVirtualServer>? virtualServer;

  /// Creates a new [FastTcpAppArgs].
  /// [application] Name of the FAST TCP application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [loadBalancingMode] A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  /// [monitor] `monitor` block takes input for FAST-Generated Pool Monitor.
  /// [persistenceProfile] Name of an existing BIG-IP persistence profile to be used.
  /// [persistenceType] Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  /// [poolMembers] `pool_members` block takes input for FAST-Generated Pool.
  /// [slowRampTime] Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  /// [snatPoolAddresses] List of address to be used for FAST-Generated SNAT Pool.
  /// [tenant] Name of the FAST TCP application tenant.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  const FastTcpAppArgs({
    required this.application,
    this.existingMonitor,
    this.existingPool,
    this.existingSnatPool,
    this.fallbackPersistence,
    this.loadBalancingMode,
    this.monitor,
    this.persistenceProfile,
    this.persistenceType,
    this.poolMembers,
    this.slowRampTime,
    this.snatPoolAddresses,
    required this.tenant,
    this.virtualServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'fallbackPersistence': ?fallbackPersistence,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastTcpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastTcpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastTcpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastTcpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
    };
  }

  factory FastTcpAppArgs.fromMap(Map<String, dynamic> map) {
    return FastTcpAppArgs(
      application: pulumi.Input.fromValue(map['application'] as String),
      existingMonitor: (() { final guardedValue = map['existingMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingPool: (() { final guardedValue = map['existingPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingSnatPool: (() { final guardedValue = map['existingSnatPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackPersistence: (() { final guardedValue = map['fallbackPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastTcpAppMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistenceProfile: (() { final guardedValue = map['persistenceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceType: (() { final guardedValue = map['persistenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolMembers: (() { final guardedValue = map['poolMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FastTcpAppPoolMember>(guardedValue, (value) => FastTcpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slowRampTime: (() { final guardedValue = map['slowRampTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snatPoolAddresses: (() { final guardedValue = map['snatPoolAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenant: pulumi.Input.fromValue(map['tenant'] as String),
      virtualServer: (() { final guardedValue = map['virtualServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastTcpAppVirtualServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

