// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_tcp_app_monitor.dart';
import 'fast_tcp_app_pool_member.dart';
import 'fast_tcp_app_virtual_server.dart';

/// Input properties used for looking up and filtering FastTcpApp resources.
class FastTcpAppState {
  /// Name of the FAST TCP application.
  final pulumi.Input<String>? application;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Name of an existing BIG-IP pool.
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// Json payload for FAST TCP application.
  final pulumi.Input<String>? fastTcpJson;
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
  final pulumi.Input<String>? tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastTcpAppVirtualServer>? virtualServer;

  /// Creates a new [FastTcpAppState].
  /// [application] Name of the FAST TCP application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [fastTcpJson] Json payload for FAST TCP application.
  /// [loadBalancingMode] A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  /// [monitor] `monitor` block takes input for FAST-Generated Pool Monitor.
  /// [persistenceProfile] Name of an existing BIG-IP persistence profile to be used.
  /// [persistenceType] Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  /// [poolMembers] `pool_members` block takes input for FAST-Generated Pool.
  /// [slowRampTime] Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  /// [snatPoolAddresses] List of address to be used for FAST-Generated SNAT Pool.
  /// [tenant] Name of the FAST TCP application tenant.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  FastTcpAppState({
    this.application,
    this.existingMonitor,
    this.existingPool,
    this.existingSnatPool,
    this.fallbackPersistence,
    this.fastTcpJson,
    this.loadBalancingMode,
    this.monitor,
    this.persistenceProfile,
    this.persistenceType,
    this.poolMembers,
    this.slowRampTime,
    this.snatPoolAddresses,
    this.tenant,
    this.virtualServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'fallbackPersistence': ?fallbackPersistence,
      'fastTcpJson': ?fastTcpJson,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastTcpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastTcpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastTcpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': ?tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastTcpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
    };
  }

  factory FastTcpAppState.fromMap(Map<String, dynamic> map) {
    return FastTcpAppState(
      application: map['application'] == null ? null : (map['application']! as String).input(),
      existingMonitor: map['existingMonitor'] == null ? null : (map['existingMonitor']! as String).input(),
      existingPool: map['existingPool'] == null ? null : (map['existingPool']! as String).input(),
      existingSnatPool: map['existingSnatPool'] == null ? null : (map['existingSnatPool']! as String).input(),
      fallbackPersistence: map['fallbackPersistence'] == null ? null : (map['fallbackPersistence']! as String).input(),
      fastTcpJson: map['fastTcpJson'] == null ? null : (map['fastTcpJson']! as String).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode']! as String).input(),
      monitor: map['monitor'] == null ? null : (FastTcpAppMonitor.fromMap((map['monitor']! as Map).cast<String, dynamic>())).input(),
      persistenceProfile: map['persistenceProfile'] == null ? null : (map['persistenceProfile']! as String).input(),
      persistenceType: map['persistenceType'] == null ? null : (map['persistenceType']! as String).input(),
      poolMembers: map['poolMembers'] == null ? null : (pulumi.Input.decodeList<FastTcpAppPoolMember>(map['poolMembers']!, (value) => FastTcpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      slowRampTime: map['slowRampTime'] == null ? null : (map['slowRampTime']! as int).input(),
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : ((map['snatPoolAddresses']! as List).cast<String>()).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']! as String).input(),
      virtualServer: map['virtualServer'] == null ? null : (FastTcpAppVirtualServer.fromMap((map['virtualServer']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

