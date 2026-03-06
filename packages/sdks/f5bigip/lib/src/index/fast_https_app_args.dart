// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_https_app_monitor.dart';
import 'fast_https_app_pool_member.dart';
import 'fast_https_app_tls_client_profile.dart';
import 'fast_https_app_tls_server_profile.dart';
import 'fast_https_app_virtual_server.dart';
import 'fast_https_app_waf_security_policy.dart';

/// {@template pulumi_index_fast_https_app_fast_https_app_args_doc}
/// The set of arguments for FastHttpsApp.
/// {@endtemplate}
/// {@macro pulumi_index_fast_https_app_fast_https_app_args_doc}
class FastHttpsAppArgs {
  /// Name of the FAST HTTPS application.
  final pulumi.Input<String> application;
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
  final pulumi.Input<String> tenant;
  /// `tls_client_profile` block takes input for FAST-Generated TLS client Profile.
  /// See TLS Client Profile below for more details.
  ///
  /// &gt; **NOTE** Profile provided by `existing_tls_client_profile` or `tls_client_profile` used for encrypt server-side connections.
  final pulumi.Input<FastHttpsAppTlsClientProfile>? tlsClientProfile;
  /// `tls_server_profile` block takes input for FAST-Generated TLS Server Profile.
  /// See TLS Server Profile below for more details.
  ///
  /// &gt; **NOTE** Profile provided by `existing_tls_server_profile` or `tls_server_profile` used for decrypt client-side connections.
  final pulumi.Input<FastHttpsAppTlsServerProfile>? tlsServerProfile;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastHttpsAppVirtualServer>? virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  final pulumi.Input<FastHttpsAppWafSecurityPolicy>? wafSecurityPolicy;

  /// Creates a new [FastHttpsAppArgs].
  /// [application] Name of the FAST HTTPS application.
  /// [endpointLtmPolicies] List of LTM Policies to be applied FAST HTTPS Application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Name of an existing BIG-IP pool.
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [existingTlsClientProfile] Name of an existing TLS client profile.
  /// [existingTlsServerProfile] Name of an existing TLS server profile.
  /// [existingWafSecurityPolicy] Name of an existing WAF Security policy.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
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
  const FastHttpsAppArgs({
    required this.application,
    this.endpointLtmPolicies,
    this.existingMonitor,
    this.existingPool,
    this.existingSnatPool,
    this.existingTlsClientProfile,
    this.existingTlsServerProfile,
    this.existingWafSecurityPolicy,
    this.fallbackPersistence,
    this.loadBalancingMode,
    this.monitor,
    this.persistenceProfile,
    this.persistenceType,
    this.poolMembers,
    this.securityLogProfiles,
    this.serviceDiscoveries,
    this.slowRampTime,
    this.snatPoolAddresses,
    required this.tenant,
    this.tlsClientProfile,
    this.tlsServerProfile,
    this.virtualServer,
    this.wafSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'endpointLtmPolicies': ?endpointLtmPolicies,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'existingTlsClientProfile': ?existingTlsClientProfile,
      'existingTlsServerProfile': ?existingTlsServerProfile,
      'existingWafSecurityPolicy': ?existingWafSecurityPolicy,
      'fallbackPersistence': ?fallbackPersistence,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastHttpsAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastHttpsAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'serviceDiscoveries': ?serviceDiscoveries,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': tenant,
      'tlsClientProfile': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppTlsClientProfile, Map<String, dynamic>>(tlsClientProfile, (value) => value.toMap()),
      'tlsServerProfile': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppTlsServerProfile, Map<String, dynamic>>(tlsServerProfile, (value) => value.toMap()),
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<FastHttpsAppWafSecurityPolicy, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory FastHttpsAppArgs.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppArgs(
      application: pulumi.Input.fromValue(map['application'] as String),
      endpointLtmPolicies: (() { final guardedValue = map['endpointLtmPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      existingMonitor: (() { final guardedValue = map['existingMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingPool: (() { final guardedValue = map['existingPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingSnatPool: (() { final guardedValue = map['existingSnatPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingTlsClientProfile: (() { final guardedValue = map['existingTlsClientProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingTlsServerProfile: (() { final guardedValue = map['existingTlsServerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingWafSecurityPolicy: (() { final guardedValue = map['existingWafSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackPersistence: (() { final guardedValue = map['fallbackPersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingMode: (() { final guardedValue = map['loadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastHttpsAppMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistenceProfile: (() { final guardedValue = map['persistenceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceType: (() { final guardedValue = map['persistenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolMembers: (() { final guardedValue = map['poolMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FastHttpsAppPoolMember>(guardedValue, (value) => FastHttpsAppPoolMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityLogProfiles: (() { final guardedValue = map['securityLogProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceDiscoveries: (() { final guardedValue = map['serviceDiscoveries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slowRampTime: (() { final guardedValue = map['slowRampTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snatPoolAddresses: (() { final guardedValue = map['snatPoolAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenant: pulumi.Input.fromValue(map['tenant'] as String),
      tlsClientProfile: (() { final guardedValue = map['tlsClientProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastHttpsAppTlsClientProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsServerProfile: (() { final guardedValue = map['tlsServerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastHttpsAppTlsServerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualServer: (() { final guardedValue = map['virtualServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastHttpsAppVirtualServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafSecurityPolicy: (() { final guardedValue = map['wafSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastHttpsAppWafSecurityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

