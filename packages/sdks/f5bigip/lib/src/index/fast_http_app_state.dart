// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_http_app_monitor.dart';
import 'fast_http_app_pool_member.dart';
import 'fast_http_app_virtual_server.dart';
import 'fast_http_app_waf_security_policy.dart';

/// Input properties used for looking up and filtering FastHttpApp resources.
class FastHttpAppState {
  /// Name of the FAST HTTPS application.
  final pulumi.Input<String>? application;
  /// List of LTM Policies to be applied FAST HTTP Application.
  final pulumi.Input<List<String>>? endpointLtmPolicies;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Select an existing BIG-IP Pool
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Name of an existing WAF Security policy.
  final pulumi.Input<String>? existingWafSecurityPolicy;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// Json payload for FAST HTTP application.
  final pulumi.Input<String>? fastHttpJson;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  final pulumi.Input<String>? loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  final pulumi.Input<FastHttpAppMonitor>? monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  final pulumi.Input<String>? persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  final pulumi.Input<String>? persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  final pulumi.Input<List<FastHttpAppPoolMember>>? poolMembers;
  /// List of security log profiles to be used for FAST application
  final pulumi.Input<List<String>>? securityLogProfiles;
  /// List of different cloud service discovery config provided as string, provided `service_discovery` block to Automatically Discover Pool Members with Service Discovery on different clouds.
  final pulumi.Input<List<String>>? serviceDiscoveries;
  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  final pulumi.Input<int>? slowRampTime;
  /// List of address to be used for FAST-Generated SNAT Pool.
  final pulumi.Input<List<String>>? snatPoolAddresses;
  /// Name of the FAST HTTPS application tenant.
  final pulumi.Input<String>? tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastHttpAppVirtualServer>? virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  final pulumi.Input<FastHttpAppWafSecurityPolicy>? wafSecurityPolicy;

  /// Creates a new [FastHttpAppState].
  /// [application] Name of the FAST HTTPS application.
  /// [endpointLtmPolicies] List of LTM Policies to be applied FAST HTTP Application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Select an existing BIG-IP Pool
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [existingWafSecurityPolicy] Name of an existing WAF Security policy.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [fastHttpJson] Json payload for FAST HTTP application.
  /// [loadBalancingMode] A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  /// [monitor] `monitor` block takes input for FAST-Generated Pool Monitor.
  /// [persistenceProfile] Name of an existing BIG-IP persistence profile to be used.
  /// [persistenceType] Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  /// [poolMembers] `pool_members` block takes input for FAST-Generated Pool.
  /// [securityLogProfiles] List of security log profiles to be used for FAST application
  /// [serviceDiscoveries] List of different cloud service discovery config provided as string, provided `service_discovery` block to Automatically Discover Pool Members with Service Discovery on different clouds.
  /// [slowRampTime] Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  /// [snatPoolAddresses] List of address to be used for FAST-Generated SNAT Pool.
  /// [tenant] Name of the FAST HTTPS application tenant.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// [wafSecurityPolicy] `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  FastHttpAppState({
    this.application,
    this.endpointLtmPolicies,
    this.existingMonitor,
    this.existingPool,
    this.existingSnatPool,
    this.existingWafSecurityPolicy,
    this.fallbackPersistence,
    this.fastHttpJson,
    this.loadBalancingMode,
    this.monitor,
    this.persistenceProfile,
    this.persistenceType,
    this.poolMembers,
    this.securityLogProfiles,
    this.serviceDiscoveries,
    this.slowRampTime,
    this.snatPoolAddresses,
    this.tenant,
    this.virtualServer,
    this.wafSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'endpointLtmPolicies': ?endpointLtmPolicies,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'existingWafSecurityPolicy': ?existingWafSecurityPolicy,
      'fallbackPersistence': ?fallbackPersistence,
      'fastHttpJson': ?fastHttpJson,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastHttpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastHttpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastHttpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'serviceDiscoveries': ?serviceDiscoveries,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': ?tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastHttpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<FastHttpAppWafSecurityPolicy, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory FastHttpAppState.fromMap(Map<String, dynamic> map) {
    return FastHttpAppState(
      application: map['application'] == null ? null : (map['application']! as String).input(),
      endpointLtmPolicies: map['endpointLtmPolicies'] == null ? null : ((map['endpointLtmPolicies']! as List).cast<String>()).input(),
      existingMonitor: map['existingMonitor'] == null ? null : (map['existingMonitor']! as String).input(),
      existingPool: map['existingPool'] == null ? null : (map['existingPool']! as String).input(),
      existingSnatPool: map['existingSnatPool'] == null ? null : (map['existingSnatPool']! as String).input(),
      existingWafSecurityPolicy: map['existingWafSecurityPolicy'] == null ? null : (map['existingWafSecurityPolicy']! as String).input(),
      fallbackPersistence: map['fallbackPersistence'] == null ? null : (map['fallbackPersistence']! as String).input(),
      fastHttpJson: map['fastHttpJson'] == null ? null : (map['fastHttpJson']! as String).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode']! as String).input(),
      monitor: map['monitor'] == null ? null : (FastHttpAppMonitor.fromMap((map['monitor']! as Map).cast<String, dynamic>())).input(),
      persistenceProfile: map['persistenceProfile'] == null ? null : (map['persistenceProfile']! as String).input(),
      persistenceType: map['persistenceType'] == null ? null : (map['persistenceType']! as String).input(),
      poolMembers: map['poolMembers'] == null ? null : (pulumi.Input.decodeList<FastHttpAppPoolMember>(map['poolMembers']!, (value) => FastHttpAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : ((map['securityLogProfiles']! as List).cast<String>()).input(),
      serviceDiscoveries: map['serviceDiscoveries'] == null ? null : ((map['serviceDiscoveries']! as List).cast<String>()).input(),
      slowRampTime: map['slowRampTime'] == null ? null : (map['slowRampTime']! as int).input(),
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : ((map['snatPoolAddresses']! as List).cast<String>()).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']! as String).input(),
      virtualServer: map['virtualServer'] == null ? null : (FastHttpAppVirtualServer.fromMap((map['virtualServer']! as Map).cast<String, dynamic>())).input(),
      wafSecurityPolicy: map['wafSecurityPolicy'] == null ? null : (FastHttpAppWafSecurityPolicy.fromMap((map['wafSecurityPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

