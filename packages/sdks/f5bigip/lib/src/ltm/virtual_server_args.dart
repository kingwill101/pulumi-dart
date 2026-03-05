// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_virtual_server_virtual_server_args_doc}
/// The set of arguments for VirtualServer.
/// {@endtemplate}
/// {@macro pulumi_ltm_virtual_server_virtual_server_args_doc}
class VirtualServerArgs {
  /// List of client context profiles associated on the virtual server. Not mutually exclusive with profiles and server_profiles
  final pulumi.Input<List<String>>? clientProfiles;
  /// Specifies the maximum number of connections allowed for the virtual server.
  final pulumi.Input<int>? connectionLimit;
  final pulumi.Input<String>? defaultPersistenceProfile;
  /// Description of Virtual server
  final pulumi.Input<String>? description;
  /// Destination IP
  final pulumi.Input<String>? destination;
  /// Specifies a fallback persistence profile for the Virtual Server to use when the default persistence profile is not available.
  final pulumi.Input<String>? fallbackPersistenceProfile;
  /// Applies the specified AFM policy to the virtual in an enforcing way,when creating a new virtual, if this parameter is not specified, the enforced is disabled.This should be in full path ex: `/Common/afm-test-policy`.
  final pulumi.Input<String>? firewallEnforcedPolicy;
  /// Specifies a network protocol name you want the system to use to direct traffic on this virtual server. The default is `tcp`. valid options are [`any`,`udp`,`tcp`]
  final pulumi.Input<String>? ipProtocol;
  /// The iRules list you want run on this virtual server. iRules help automate the intercepting, processing, and routing of application traffic.
  final pulumi.Input<List<String>>? irules;
  /// Mask can either be in CIDR notation or decimal, i.e.: 24 or 255.255.255.0. A CIDR mask of 0 is the same as 0.0.0.0
  final pulumi.Input<String>? mask;
  /// Name of the virtual server
  final pulumi.Input<String> name;
  final pulumi.Input<String>? perFlowRequestAccessPolicy;
  /// List of persistence profiles associated with the Virtual Server.
  final pulumi.Input<List<String>>? persistenceProfiles;
  /// Specifies the policies for the virtual server.
  final pulumi.Input<List<String>>? policies;
  /// Default pool name
  final pulumi.Input<String>? pool;
  /// Listen port for the virtual server
  final pulumi.Input<int>? port;
  /// List of profiles associated both client and server contexts on the virtual server. This includes protocol, ssl, http, etc.
  final pulumi.Input<List<String>>? profiles;
  /// Specifies the log profile applied to the virtual server.
  final pulumi.Input<List<String>>? securityLogProfiles;
  /// List of server context profiles associated on the virtual server. Not mutually exclusive with profiles and client_profiles
  final pulumi.Input<List<String>>? serverProfiles;
  /// Specifies the name of an existing SNAT pool that you want the virtual server to use to implement selective and intelligent SNATs.
  final pulumi.Input<String>? snatpool;
  /// Specifies an IP address or network from which the virtual server will accept traffic.
  final pulumi.Input<String>? source;
  /// Can be either omitted for `none` or the values `automap` options : [`snat`,`automap`,`none`].
  final pulumi.Input<String>? sourceAddressTranslation;
  /// Specifies whether the system preserves the source port of the connection. The default is `preserve`.
  final pulumi.Input<String>? sourcePort;
  /// Specifies whether the virtual server and its resources are available for load balancing. The default is Enabled
  final pulumi.Input<String>? state;
  /// Specifies destination traffic matching information to which the virtual server sends traffic
  final pulumi.Input<String>? trafficmatchingCriteria;
  /// Enables or disables address translation for the virtual server. Turn address translation off for a virtual server if you want to use the virtual server to load balance connections to any address. This option is useful when the system is load balancing devices that have the same IP address.
  final pulumi.Input<String>? translateAddress;
  /// Enables or disables port translation. Turn port translation off for a virtual server if you want to use the virtual server to load balance connections to any service
  final pulumi.Input<String>? translatePort;
  /// The virtual server is enabled/disabled on this set of VLANs,enable/disabled will be desided by attribute `vlan_enabled`
  final pulumi.Input<List<String>>? vlans;
  /// Enables the virtual server on the VLANs specified by the `vlans` option.
  /// By default it is `false` i.e vlanDisabled on specified vlans, if we want enable virtual server on VLANs specified by `vlans`, mark this attribute to `true`.
  final pulumi.Input<bool>? vlansEnabled;

  /// Creates a new [VirtualServerArgs].
  /// [clientProfiles] List of client context profiles associated on the virtual server. Not mutually exclusive with profiles and server_profiles
  /// [connectionLimit] Specifies the maximum number of connections allowed for the virtual server.
  /// [defaultPersistenceProfile] Optional.
  /// [description] Description of Virtual server
  /// [destination] Destination IP
  /// [fallbackPersistenceProfile] Specifies a fallback persistence profile for the Virtual Server to use when the default persistence profile is not available.
  /// [firewallEnforcedPolicy] Applies the specified AFM policy to the virtual in an enforcing way,when creating a new virtual, if this parameter is not specified, the enforced is disabled.This should be in full path ex: `/Common/afm-test-policy`.
  /// [ipProtocol] Specifies a network protocol name you want the system to use to direct traffic on this virtual server. The default is `tcp`. valid options are [`any`,`udp`,`tcp`]
  /// [irules] The iRules list you want run on this virtual server. iRules help automate the intercepting, processing, and routing of application traffic.
  /// [mask] Mask can either be in CIDR notation or decimal, i.e.: 24 or 255.255.255.0. A CIDR mask of 0 is the same as 0.0.0.0
  /// [name] Name of the virtual server
  /// [perFlowRequestAccessPolicy] Optional.
  /// [persistenceProfiles] List of persistence profiles associated with the Virtual Server.
  /// [policies] Specifies the policies for the virtual server.
  /// [pool] Default pool name
  /// [port] Listen port for the virtual server
  /// [profiles] List of profiles associated both client and server contexts on the virtual server. This includes protocol, ssl, http, etc.
  /// [securityLogProfiles] Specifies the log profile applied to the virtual server.
  /// [serverProfiles] List of server context profiles associated on the virtual server. Not mutually exclusive with profiles and client_profiles
  /// [snatpool] Specifies the name of an existing SNAT pool that you want the virtual server to use to implement selective and intelligent SNATs.
  /// [source] Specifies an IP address or network from which the virtual server will accept traffic.
  /// [sourceAddressTranslation] Can be either omitted for `none` or the values `automap` options : [`snat`,`automap`,`none`].
  /// [sourcePort] Specifies whether the system preserves the source port of the connection. The default is `preserve`.
  /// [state] Specifies whether the virtual server and its resources are available for load balancing. The default is Enabled
  /// [trafficmatchingCriteria] Specifies destination traffic matching information to which the virtual server sends traffic
  /// [translateAddress] Enables or disables address translation for the virtual server. Turn address translation off for a virtual server if you want to use the virtual server to load balance connections to any address. This option is useful when the system is load balancing devices that have the same IP address.
  /// [translatePort] Enables or disables port translation. Turn port translation off for a virtual server if you want to use the virtual server to load balance connections to any service
  /// [vlans] The virtual server is enabled/disabled on this set of VLANs,enable/disabled will be desided by attribute `vlan_enabled`
  /// [vlansEnabled] Enables the virtual server on the VLANs specified by the `vlans` option.
  VirtualServerArgs({
    this.clientProfiles,
    this.connectionLimit,
    this.defaultPersistenceProfile,
    this.description,
    this.destination,
    this.fallbackPersistenceProfile,
    this.firewallEnforcedPolicy,
    this.ipProtocol,
    this.irules,
    this.mask,
    required this.name,
    this.perFlowRequestAccessPolicy,
    this.persistenceProfiles,
    this.policies,
    this.pool,
    this.port,
    this.profiles,
    this.securityLogProfiles,
    this.serverProfiles,
    this.snatpool,
    this.source,
    this.sourceAddressTranslation,
    this.sourcePort,
    this.state,
    this.trafficmatchingCriteria,
    this.translateAddress,
    this.translatePort,
    this.vlans,
    this.vlansEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientProfiles': ?clientProfiles,
      'connectionLimit': ?connectionLimit,
      'defaultPersistenceProfile': ?defaultPersistenceProfile,
      'description': ?description,
      'destination': ?destination,
      'fallbackPersistenceProfile': ?fallbackPersistenceProfile,
      'firewallEnforcedPolicy': ?firewallEnforcedPolicy,
      'ipProtocol': ?ipProtocol,
      'irules': ?irules,
      'mask': ?mask,
      'name': name,
      'perFlowRequestAccessPolicy': ?perFlowRequestAccessPolicy,
      'persistenceProfiles': ?persistenceProfiles,
      'policies': ?policies,
      'pool': ?pool,
      'port': ?port,
      'profiles': ?profiles,
      'securityLogProfiles': ?securityLogProfiles,
      'serverProfiles': ?serverProfiles,
      'snatpool': ?snatpool,
      'source': ?source,
      'sourceAddressTranslation': ?sourceAddressTranslation,
      'sourcePort': ?sourcePort,
      'state': ?state,
      'trafficmatchingCriteria': ?trafficmatchingCriteria,
      'translateAddress': ?translateAddress,
      'translatePort': ?translatePort,
      'vlans': ?vlans,
      'vlansEnabled': ?vlansEnabled,
    };
  }

  factory VirtualServerArgs.fromMap(Map<String, dynamic> map) {
    return VirtualServerArgs(
      clientProfiles: (() { final guardedValue = map['clientProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionLimit: (() { final guardedValue = map['connectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultPersistenceProfile: (() { final guardedValue = map['defaultPersistenceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackPersistenceProfile: (() { final guardedValue = map['fallbackPersistenceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallEnforcedPolicy: (() { final guardedValue = map['firewallEnforcedPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      irules: (() { final guardedValue = map['irules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mask: (() { final guardedValue = map['mask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      perFlowRequestAccessPolicy: (() { final guardedValue = map['perFlowRequestAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceProfiles: (() { final guardedValue = map['persistenceProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityLogProfiles: (() { final guardedValue = map['securityLogProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverProfiles: (() { final guardedValue = map['serverProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snatpool: (() { final guardedValue = map['snatpool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAddressTranslation: (() { final guardedValue = map['sourceAddressTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePort: (() { final guardedValue = map['sourcePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficmatchingCriteria: (() { final guardedValue = map['trafficmatchingCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translateAddress: (() { final guardedValue = map['translateAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translatePort: (() { final guardedValue = map['translatePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlans: (() { final guardedValue = map['vlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlansEnabled: (() { final guardedValue = map['vlansEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

