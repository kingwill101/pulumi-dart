// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualServer resources.
class VirtualServerState {
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
  final pulumi.Input<String>? name;
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

  /// Creates a new [VirtualServerState].
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
  VirtualServerState({
    pulumi.Output<List<String>>? clientProfiles,
    pulumi.Output<int>? connectionLimit,
    pulumi.Output<String>? defaultPersistenceProfile,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? fallbackPersistenceProfile,
    pulumi.Output<String>? firewallEnforcedPolicy,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<List<String>>? irules,
    pulumi.Output<String>? mask,
    pulumi.Output<String>? name,
    pulumi.Output<String>? perFlowRequestAccessPolicy,
    pulumi.Output<List<String>>? persistenceProfiles,
    pulumi.Output<List<String>>? policies,
    pulumi.Output<String>? pool,
    pulumi.Output<int>? port,
    pulumi.Output<List<String>>? profiles,
    pulumi.Output<List<String>>? securityLogProfiles,
    pulumi.Output<List<String>>? serverProfiles,
    pulumi.Output<String>? snatpool,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceAddressTranslation,
    pulumi.Output<String>? sourcePort,
    pulumi.Output<String>? state,
    pulumi.Output<String>? trafficmatchingCriteria,
    pulumi.Output<String>? translateAddress,
    pulumi.Output<String>? translatePort,
    pulumi.Output<List<String>>? vlans,
    pulumi.Output<bool>? vlansEnabled,
  }) :
      clientProfiles = pulumi.Input.asOptionalInput<List<String>>(clientProfiles),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      defaultPersistenceProfile = pulumi.Input.asOptionalInput<String>(defaultPersistenceProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      fallbackPersistenceProfile = pulumi.Input.asOptionalInput<String>(fallbackPersistenceProfile),
      firewallEnforcedPolicy = pulumi.Input.asOptionalInput<String>(firewallEnforcedPolicy),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      irules = pulumi.Input.asOptionalInput<List<String>>(irules),
      mask = pulumi.Input.asOptionalInput<String>(mask),
      name = pulumi.Input.asOptionalInput<String>(name),
      perFlowRequestAccessPolicy = pulumi.Input.asOptionalInput<String>(perFlowRequestAccessPolicy),
      persistenceProfiles = pulumi.Input.asOptionalInput<List<String>>(persistenceProfiles),
      policies = pulumi.Input.asOptionalInput<List<String>>(policies),
      pool = pulumi.Input.asOptionalInput<String>(pool),
      port = pulumi.Input.asOptionalInput<int>(port),
      profiles = pulumi.Input.asOptionalInput<List<String>>(profiles),
      securityLogProfiles = pulumi.Input.asOptionalInput<List<String>>(securityLogProfiles),
      serverProfiles = pulumi.Input.asOptionalInput<List<String>>(serverProfiles),
      snatpool = pulumi.Input.asOptionalInput<String>(snatpool),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceAddressTranslation = pulumi.Input.asOptionalInput<String>(sourceAddressTranslation),
      sourcePort = pulumi.Input.asOptionalInput<String>(sourcePort),
      state = pulumi.Input.asOptionalInput<String>(state),
      trafficmatchingCriteria = pulumi.Input.asOptionalInput<String>(trafficmatchingCriteria),
      translateAddress = pulumi.Input.asOptionalInput<String>(translateAddress),
      translatePort = pulumi.Input.asOptionalInput<String>(translatePort),
      vlans = pulumi.Input.asOptionalInput<List<String>>(vlans),
      vlansEnabled = pulumi.Input.asOptionalInput<bool>(vlansEnabled);

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
      'name': ?name,
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

  factory VirtualServerState.fromMap(Map<String, dynamic> map) {
    return VirtualServerState(
      clientProfiles: map['clientProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['clientProfiles'] as List).cast<String>()),
      connectionLimit: map['connectionLimit'] == null ? null : pulumi.Output.create<int>(map['connectionLimit'] as int),
      defaultPersistenceProfile: map['defaultPersistenceProfile'] == null ? null : pulumi.Output.create<String>(map['defaultPersistenceProfile'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      fallbackPersistenceProfile: map['fallbackPersistenceProfile'] == null ? null : pulumi.Output.create<String>(map['fallbackPersistenceProfile'] as String),
      firewallEnforcedPolicy: map['firewallEnforcedPolicy'] == null ? null : pulumi.Output.create<String>(map['firewallEnforcedPolicy'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      irules: map['irules'] == null ? null : pulumi.Output.create<List<String>>((map['irules'] as List).cast<String>()),
      mask: map['mask'] == null ? null : pulumi.Output.create<String>(map['mask'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      perFlowRequestAccessPolicy: map['perFlowRequestAccessPolicy'] == null ? null : pulumi.Output.create<String>(map['perFlowRequestAccessPolicy'] as String),
      persistenceProfiles: map['persistenceProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['persistenceProfiles'] as List).cast<String>()),
      policies: map['policies'] == null ? null : pulumi.Output.create<List<String>>((map['policies'] as List).cast<String>()),
      pool: map['pool'] == null ? null : pulumi.Output.create<String>(map['pool'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      profiles: map['profiles'] == null ? null : pulumi.Output.create<List<String>>((map['profiles'] as List).cast<String>()),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['securityLogProfiles'] as List).cast<String>()),
      serverProfiles: map['serverProfiles'] == null ? null : pulumi.Output.create<List<String>>((map['serverProfiles'] as List).cast<String>()),
      snatpool: map['snatpool'] == null ? null : pulumi.Output.create<String>(map['snatpool'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceAddressTranslation: map['sourceAddressTranslation'] == null ? null : pulumi.Output.create<String>(map['sourceAddressTranslation'] as String),
      sourcePort: map['sourcePort'] == null ? null : pulumi.Output.create<String>(map['sourcePort'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      trafficmatchingCriteria: map['trafficmatchingCriteria'] == null ? null : pulumi.Output.create<String>(map['trafficmatchingCriteria'] as String),
      translateAddress: map['translateAddress'] == null ? null : pulumi.Output.create<String>(map['translateAddress'] as String),
      translatePort: map['translatePort'] == null ? null : pulumi.Output.create<String>(map['translatePort'] as String),
      vlans: map['vlans'] == null ? null : pulumi.Output.create<List<String>>((map['vlans'] as List).cast<String>()),
      vlansEnabled: map['vlansEnabled'] == null ? null : pulumi.Output.create<bool>(map['vlansEnabled'] as bool),
    );
  }
}

