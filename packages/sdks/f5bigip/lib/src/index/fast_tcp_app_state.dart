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
    pulumi.Output<String>? application,
    pulumi.Output<String>? existingMonitor,
    pulumi.Output<String>? existingPool,
    pulumi.Output<String>? existingSnatPool,
    pulumi.Output<String>? fallbackPersistence,
    pulumi.Output<String>? fastTcpJson,
    pulumi.Output<String>? loadBalancingMode,
    pulumi.Output<FastTcpAppMonitor>? monitor,
    pulumi.Output<String>? persistenceProfile,
    pulumi.Output<String>? persistenceType,
    pulumi.Output<List<FastTcpAppPoolMember>>? poolMembers,
    pulumi.Output<int>? slowRampTime,
    pulumi.Output<List<String>>? snatPoolAddresses,
    pulumi.Output<String>? tenant,
    pulumi.Output<FastTcpAppVirtualServer>? virtualServer,
  }) :
      application = pulumi.Input.asOptionalInput<String>(application),
      existingMonitor = pulumi.Input.asOptionalInput<String>(existingMonitor),
      existingPool = pulumi.Input.asOptionalInput<String>(existingPool),
      existingSnatPool = pulumi.Input.asOptionalInput<String>(existingSnatPool),
      fallbackPersistence = pulumi.Input.asOptionalInput<String>(fallbackPersistence),
      fastTcpJson = pulumi.Input.asOptionalInput<String>(fastTcpJson),
      loadBalancingMode = pulumi.Input.asOptionalInput<String>(loadBalancingMode),
      monitor = pulumi.Input.asOptionalInput<FastTcpAppMonitor>(monitor),
      persistenceProfile = pulumi.Input.asOptionalInput<String>(persistenceProfile),
      persistenceType = pulumi.Input.asOptionalInput<String>(persistenceType),
      poolMembers = pulumi.Input.asOptionalInput<List<FastTcpAppPoolMember>>(poolMembers),
      slowRampTime = pulumi.Input.asOptionalInput<int>(slowRampTime),
      snatPoolAddresses = pulumi.Input.asOptionalInput<List<String>>(snatPoolAddresses),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      virtualServer = pulumi.Input.asOptionalInput<FastTcpAppVirtualServer>(virtualServer);

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
      application: map['application'] == null ? null : pulumi.Output.create<String>(map['application'] as String),
      existingMonitor: map['existingMonitor'] == null ? null : pulumi.Output.create<String>(map['existingMonitor'] as String),
      existingPool: map['existingPool'] == null ? null : pulumi.Output.create<String>(map['existingPool'] as String),
      existingSnatPool: map['existingSnatPool'] == null ? null : pulumi.Output.create<String>(map['existingSnatPool'] as String),
      fallbackPersistence: map['fallbackPersistence'] == null ? null : pulumi.Output.create<String>(map['fallbackPersistence'] as String),
      fastTcpJson: map['fastTcpJson'] == null ? null : pulumi.Output.create<String>(map['fastTcpJson'] as String),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : pulumi.Output.create<String>(map['loadBalancingMode'] as String),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<FastTcpAppMonitor>(FastTcpAppMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      persistenceProfile: map['persistenceProfile'] == null ? null : pulumi.Output.create<String>(map['persistenceProfile'] as String),
      persistenceType: map['persistenceType'] == null ? null : pulumi.Output.create<String>(map['persistenceType'] as String),
      poolMembers: map['poolMembers'] == null ? null : pulumi.Output.create<List<FastTcpAppPoolMember>>(pulumi.Input.decodeList<FastTcpAppPoolMember>(map['poolMembers'], (value) => FastTcpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))),
      slowRampTime: map['slowRampTime'] == null ? null : pulumi.Output.create<int>(map['slowRampTime'] as int),
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['snatPoolAddresses'] as List).cast<String>()),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      virtualServer: map['virtualServer'] == null ? null : pulumi.Output.create<FastTcpAppVirtualServer>(FastTcpAppVirtualServer.fromMap((map['virtualServer'] as Map).cast<String, dynamic>())),
    );
  }
}

