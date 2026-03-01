// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_https_app_monitor.dart';
import 'fast_https_app_pool_member.dart';
import 'fast_https_app_tls_client_profile.dart';
import 'fast_https_app_tls_server_profile.dart';
import 'fast_https_app_virtual_server.dart';
import 'fast_https_app_waf_security_policy.dart';

/// Input properties used for looking up and filtering FastHttpsApp resources.
class FastHttpsAppState {
  /// Name of the FAST HTTPS application.
  final pulumi.Input<String>? application;
  /// List of LTM Policies to be applied FAST HTTPS Application.
  final pulumi.Input<List<String>>? endpointLtmPolicies;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Name of an existing BIG-IP pool.
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Name of an existing TLS client profile.
  final pulumi.Input<String>? existingTlsClientProfile;
  /// Name of an existing TLS server profile.
  final pulumi.Input<String>? existingTlsServerProfile;
  /// Name of an existing WAF Security policy.
  final pulumi.Input<String>? existingWafSecurityPolicy;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// Json payload for FAST HTTPS application.
  final pulumi.Input<String>? fastHttpsJson;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  final pulumi.Input<String>? loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  final pulumi.Input<FastHttpsAppMonitor>? monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  final pulumi.Input<String>? persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  final pulumi.Input<String>? persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  final pulumi.Input<List<FastHttpsAppPoolMember>>? poolMembers;
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
  /// `tls_client_profile` block takes input for FAST-Generated TLS client Profile.
  /// See TLS Client Profile below for more details.
  ///
  /// > **NOTE** Profile provided by `existing_tls_client_profile` or `tls_client_profile` used for encrypt server-side connections.
  final pulumi.Input<FastHttpsAppTlsClientProfile>? tlsClientProfile;
  /// `tls_server_profile` block takes input for FAST-Generated TLS Server Profile.
  /// See TLS Server Profile below for more details.
  ///
  /// > **NOTE** Profile provided by `existing_tls_server_profile` or `tls_server_profile` used for decrypt client-side connections.
  final pulumi.Input<FastHttpsAppTlsServerProfile>? tlsServerProfile;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastHttpsAppVirtualServer>? virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  final pulumi.Input<FastHttpsAppWafSecurityPolicy>? wafSecurityPolicy;

  /// Creates a new [FastHttpsAppState].
  /// [application] Name of the FAST HTTPS application.
  /// [endpointLtmPolicies] List of LTM Policies to be applied FAST HTTPS Application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [existingTlsClientProfile] Name of an existing TLS client profile.
  /// [existingTlsServerProfile] Name of an existing TLS server profile.
  /// [existingWafSecurityPolicy] Name of an existing WAF Security policy.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [fastHttpsJson] Json payload for FAST HTTPS application.
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
  /// [tlsClientProfile] `tls_client_profile` block takes input for FAST-Generated TLS client Profile.
  /// [tlsServerProfile] `tls_server_profile` block takes input for FAST-Generated TLS Server Profile.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// [wafSecurityPolicy] `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  FastHttpsAppState({
    pulumi.Output<String>? application,
    pulumi.Output<List<String>>? endpointLtmPolicies,
    pulumi.Output<String>? existingMonitor,
    pulumi.Output<String>? existingPool,
    pulumi.Output<String>? existingSnatPool,
    pulumi.Output<String>? existingTlsClientProfile,
    pulumi.Output<String>? existingTlsServerProfile,
    pulumi.Output<String>? existingWafSecurityPolicy,
    pulumi.Output<String>? fallbackPersistence,
    pulumi.Output<String>? fastHttpsJson,
    pulumi.Output<String>? loadBalancingMode,
    pulumi.Output<FastHttpsAppMonitor>? monitor,
    pulumi.Output<String>? persistenceProfile,
    pulumi.Output<String>? persistenceType,
    pulumi.Output<List<FastHttpsAppPoolMember>>? poolMembers,
    pulumi.Output<List<String>>? securityLogProfiles,
    pulumi.Output<List<String>>? serviceDiscoveries,
    pulumi.Output<int>? slowRampTime,
    pulumi.Output<List<String>>? snatPoolAddresses,
    pulumi.Output<String>? tenant,
    pulumi.Output<FastHttpsAppTlsClientProfile>? tlsClientProfile,
    pulumi.Output<FastHttpsAppTlsServerProfile>? tlsServerProfile,
    pulumi.Output<FastHttpsAppVirtualServer>? virtualServer,
    pulumi.Output<FastHttpsAppWafSecurityPolicy>? wafSecurityPolicy,
  }) :
      application = pulumi.Input.asOptionalInput<String>(application),
      endpointLtmPolicies = pulumi.Input.asOptionalInput<List<String>>(endpointLtmPolicies),
      existingMonitor = pulumi.Input.asOptionalInput<String>(existingMonitor),
      existingPool = pulumi.Input.asOptionalInput<String>(existingPool),
      existingSnatPool = pulumi.Input.asOptionalInput<String>(existingSnatPool),
      existingTlsClientProfile = pulumi.Input.asOptionalInput<String>(existingTlsClientProfile),
      existingTlsServerProfile = pulumi.Input.asOptionalInput<String>(existingTlsServerProfile),
      existingWafSecurityPolicy = pulumi.Input.asOptionalInput<String>(existingWafSecurityPolicy),
      fallbackPersistence = pulumi.Input.asOptionalInput<String>(fallbackPersistence),
      fastHttpsJson = pulumi.Input.asOptionalInput<String>(fastHttpsJson),
      loadBalancingMode = pulumi.Input.asOptionalInput<String>(loadBalancingMode),
      monitor = pulumi.Input.asOptionalInput<FastHttpsAppMonitor>(monitor),
      persistenceProfile = pulumi.Input.asOptionalInput<String>(persistenceProfile),
      persistenceType = pulumi.Input.asOptionalInput<String>(persistenceType),
      poolMembers = pulumi.Input.asOptionalInput<List<FastHttpsAppPoolMember>>(poolMembers),
      securityLogProfiles = pulumi.Input.asOptionalInput<List<String>>(securityLogProfiles),
      serviceDiscoveries = pulumi.Input.asOptionalInput<List<String>>(serviceDiscoveries),
      slowRampTime = pulumi.Input.asOptionalInput<int>(slowRampTime),
      snatPoolAddresses = pulumi.Input.asOptionalInput<List<String>>(snatPoolAddresses),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      tlsClientProfile = pulumi.Input.asOptionalInput<FastHttpsAppTlsClientProfile>(tlsClientProfile),
      tlsServerProfile = pulumi.Input.asOptionalInput<FastHttpsAppTlsServerProfile>(tlsServerProfile),
      virtualServer = pulumi.Input.asOptionalInput<FastHttpsAppVirtualServer>(virtualServer),
      wafSecurityPolicy = pulumi.Input.asOptionalInput<FastHttpsAppWafSecurityPolicy>(wafSecurityPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'endpointLtmPolicies': ?endpointLtmPolicies,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'existingTlsClientProfile': ?existingTlsClientProfile,
      'existingTlsServerProfile': ?existingTlsServerProfile,
      'existingWafSecurityPolicy': ?existingWafSecurityPolicy,
      'fallbackPersistence': ?fallbackPersistence,
      'fastHttpsJson': ?fastHttpsJson,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastHttpsAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastHttpsAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'serviceDiscoveries': ?serviceDiscoveries,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': ?tenant,
      'tlsClientProfile': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppTlsClientProfile, Map<String, dynamic>>(tlsClientProfile, (value) => value.toMap()),
      'tlsServerProfile': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppTlsServerProfile, Map<String, dynamic>>(tlsServerProfile, (value) => value.toMap()),
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppWafSecurityPolicy, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory FastHttpsAppState.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppState(
      application: map['application'] == null ? null : pulumi.Output.create<String>(map['application'] as String),
      endpointLtmPolicies: map['endpointLtmPolicies'] == null ? null : pulumi.Output.create<List<String>>((map['endpointLtmPolicies'] as List).cast<String>()),
      existingMonitor: map['existingMonitor'] == null ? null : pulumi.Output.create<String>(map['existingMonitor'] as String),
      existingPool: map['existingPool'] == null ? null : pulumi.Output.create<String>(map['existingPool'] as String),
      existingSnatPool: map['existingSnatPool'] == null ? null : pulumi.Output.create<String>(map['existingSnatPool'] as String),
      existingTlsClientProfile: map['existingTlsClientProfile'] == null ? null : pulumi.Output.create<String>(map['existingTlsClientProfile'] as String),
      existingTlsServerProfile: map['existingTlsServerProfile'] == null ? null : pulumi.Output.create<String>(map['existingTlsServerProfile'] as String),
      existingWafSecurityPolicy: map['existingWafSecurityPolicy'] == null ? null : pulumi.Output.create<String>(map['existingWafSecurityPolicy'] as String),
      fallbackPersistence: map['fallbackPersistence'] == null ? null : pulumi.Output.create<String>(map['fallbackPersistence'] as String),
      fastHttpsJson: map['fastHttpsJson'] == null ? null : pulumi.Output.create<String>(map['fastHttpsJson'] as String),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : pulumi.Output.create<String>(map['loadBalancingMode'] as String),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<FastHttpsAppMonitor>(FastHttpsAppMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      persistenceProfile: map['persistenceProfile'] == null ? null : pulumi.Output.create<String>(map['persistenceProfile'] as String),
      persistenceType: map['persistenceType'] == null ? null : pulumi.Output.create<String>(map['persistenceType'] as String),
      poolMembers: map['poolMembers'] == null ? null : pulumi.Output.create<List<FastHttpsAppPoolMember>>(pulumi.Input.decodeList<FastHttpsAppPoolMember>(map['poolMembers'], (value) => FastHttpsAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['securityLogProfiles'] as List).cast<String>()),
      serviceDiscoveries: map['serviceDiscoveries'] == null ? null : pulumi.Output.create<List<String>>((map['serviceDiscoveries'] as List).cast<String>()),
      slowRampTime: map['slowRampTime'] == null ? null : pulumi.Output.create<int>(map['slowRampTime'] as int),
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['snatPoolAddresses'] as List).cast<String>()),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      tlsClientProfile: map['tlsClientProfile'] == null ? null : pulumi.Output.create<FastHttpsAppTlsClientProfile>(FastHttpsAppTlsClientProfile.fromMap((map['tlsClientProfile'] as Map).cast<String, dynamic>())),
      tlsServerProfile: map['tlsServerProfile'] == null ? null : pulumi.Output.create<FastHttpsAppTlsServerProfile>(FastHttpsAppTlsServerProfile.fromMap((map['tlsServerProfile'] as Map).cast<String, dynamic>())),
      virtualServer: map['virtualServer'] == null ? null : pulumi.Output.create<FastHttpsAppVirtualServer>(FastHttpsAppVirtualServer.fromMap((map['virtualServer'] as Map).cast<String, dynamic>())),
      wafSecurityPolicy: map['wafSecurityPolicy'] == null ? null : pulumi.Output.create<FastHttpsAppWafSecurityPolicy>(FastHttpsAppWafSecurityPolicy.fromMap((map['wafSecurityPolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

