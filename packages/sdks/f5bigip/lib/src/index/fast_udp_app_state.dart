// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_udp_app_monitor.dart';
import 'fast_udp_app_pool_member.dart';
import 'fast_udp_app_virtual_server.dart';

/// Input properties used for looking up and filtering FastUdpApp resources.
class FastUdpAppState {
  /// Name of the FAST UDP application.
  final pulumi.Input<String>? application;
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
  /// Json payload for FAST UDP application.
  final pulumi.Input<String>? fastUdpJson;
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
  final pulumi.Input<String>? tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastUdpAppVirtualServer>? virtualServer;
  /// Names of existing VLANs to allow.
  final pulumi.Input<List<String>>? vlansAlloweds;
  /// Names of existing VLANs to reject.
  final pulumi.Input<List<String>>? vlansRejecteds;

  /// Creates a new [FastUdpAppState].
  /// [application] Name of the FAST UDP application.
  /// [enableFastl4] Enables use of FastL4 profiles.
  /// [existingMonitor] Name of an existing BIG-IP UDP pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingProfile] Name of an existing BIG-IP FastL4 or UDP profile.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [fastUdpJson] Json payload for FAST UDP application.
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
  FastUdpAppState({
    pulumi.Output<String>? application,
    pulumi.Output<bool>? enableFastl4,
    pulumi.Output<String>? existingMonitor,
    pulumi.Output<String>? existingPool,
    pulumi.Output<String>? existingProfile,
    pulumi.Output<String>? existingSnatPool,
    pulumi.Output<String>? fallbackPersistence,
    pulumi.Output<String>? fastUdpJson,
    pulumi.Output<List<String>>? irules,
    pulumi.Output<String>? loadBalancingMode,
    pulumi.Output<FastUdpAppMonitor>? monitor,
    pulumi.Output<String>? persistenceProfile,
    pulumi.Output<String>? persistenceType,
    pulumi.Output<List<FastUdpAppPoolMember>>? poolMembers,
    pulumi.Output<List<String>>? securityLogProfiles,
    pulumi.Output<int>? slowRampTime,
    pulumi.Output<List<String>>? snatPoolAddresses,
    pulumi.Output<String>? tenant,
    pulumi.Output<FastUdpAppVirtualServer>? virtualServer,
    pulumi.Output<List<String>>? vlansAlloweds,
    pulumi.Output<List<String>>? vlansRejecteds,
  }) :
      application = pulumi.Input.asOptionalInput<String>(application),
      enableFastl4 = pulumi.Input.asOptionalInput<bool>(enableFastl4),
      existingMonitor = pulumi.Input.asOptionalInput<String>(existingMonitor),
      existingPool = pulumi.Input.asOptionalInput<String>(existingPool),
      existingProfile = pulumi.Input.asOptionalInput<String>(existingProfile),
      existingSnatPool = pulumi.Input.asOptionalInput<String>(existingSnatPool),
      fallbackPersistence = pulumi.Input.asOptionalInput<String>(fallbackPersistence),
      fastUdpJson = pulumi.Input.asOptionalInput<String>(fastUdpJson),
      irules = pulumi.Input.asOptionalInput<List<String>>(irules),
      loadBalancingMode = pulumi.Input.asOptionalInput<String>(loadBalancingMode),
      monitor = pulumi.Input.asOptionalInput<FastUdpAppMonitor>(monitor),
      persistenceProfile = pulumi.Input.asOptionalInput<String>(persistenceProfile),
      persistenceType = pulumi.Input.asOptionalInput<String>(persistenceType),
      poolMembers = pulumi.Input.asOptionalInput<List<FastUdpAppPoolMember>>(poolMembers),
      securityLogProfiles = pulumi.Input.asOptionalInput<List<String>>(securityLogProfiles),
      slowRampTime = pulumi.Input.asOptionalInput<int>(slowRampTime),
      snatPoolAddresses = pulumi.Input.asOptionalInput<List<String>>(snatPoolAddresses),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      virtualServer = pulumi.Input.asOptionalInput<FastUdpAppVirtualServer>(virtualServer),
      vlansAlloweds = pulumi.Input.asOptionalInput<List<String>>(vlansAlloweds),
      vlansRejecteds = pulumi.Input.asOptionalInput<List<String>>(vlansRejecteds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'enableFastl4': ?enableFastl4,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingProfile': ?existingProfile,
      'existingSnatPool': ?existingSnatPool,
      'fallbackPersistence': ?fallbackPersistence,
      'fastUdpJson': ?fastUdpJson,
      'irules': ?irules,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastUdpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastUdpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastUdpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': ?tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastUdpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'vlansAlloweds': ?vlansAlloweds,
      'vlansRejecteds': ?vlansRejecteds,
    };
  }

  factory FastUdpAppState.fromMap(Map<String, dynamic> map) {
    return FastUdpAppState(
      application: map['application'] == null ? null : pulumi.Output.create<String>(map['application'] as String),
      enableFastl4: map['enableFastl4'] == null ? null : pulumi.Output.create<bool>(map['enableFastl4'] as bool),
      existingMonitor: map['existingMonitor'] == null ? null : pulumi.Output.create<String>(map['existingMonitor'] as String),
      existingPool: map['existingPool'] == null ? null : pulumi.Output.create<String>(map['existingPool'] as String),
      existingProfile: map['existingProfile'] == null ? null : pulumi.Output.create<String>(map['existingProfile'] as String),
      existingSnatPool: map['existingSnatPool'] == null ? null : pulumi.Output.create<String>(map['existingSnatPool'] as String),
      fallbackPersistence: map['fallbackPersistence'] == null ? null : pulumi.Output.create<String>(map['fallbackPersistence'] as String),
      fastUdpJson: map['fastUdpJson'] == null ? null : pulumi.Output.create<String>(map['fastUdpJson'] as String),
      irules: map['irules'] == null ? null : pulumi.Output.create<List<String>>((map['irules'] as List).cast<String>()),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : pulumi.Output.create<String>(map['loadBalancingMode'] as String),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<FastUdpAppMonitor>(FastUdpAppMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      persistenceProfile: map['persistenceProfile'] == null ? null : pulumi.Output.create<String>(map['persistenceProfile'] as String),
      persistenceType: map['persistenceType'] == null ? null : pulumi.Output.create<String>(map['persistenceType'] as String),
      poolMembers: map['poolMembers'] == null ? null : pulumi.Output.create<List<FastUdpAppPoolMember>>(pulumi.Input.decodeList<FastUdpAppPoolMember>(map['poolMembers'], (value) => FastUdpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['securityLogProfiles'] as List).cast<String>()),
      slowRampTime: map['slowRampTime'] == null ? null : pulumi.Output.create<int>(map['slowRampTime'] as int),
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['snatPoolAddresses'] as List).cast<String>()),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      virtualServer: map['virtualServer'] == null ? null : pulumi.Output.create<FastUdpAppVirtualServer>(FastUdpAppVirtualServer.fromMap((map['virtualServer'] as Map).cast<String, dynamic>())),
      vlansAlloweds: map['vlansAlloweds'] == null ? null : pulumi.Output.create<List<String>>((map['vlansAlloweds'] as List).cast<String>()),
      vlansRejecteds: map['vlansRejecteds'] == null ? null : pulumi.Output.create<List<String>>((map['vlansRejecteds'] as List).cast<String>()),
    );
  }
}

