import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_server_args.dart';
import 'virtual_server_state.dart';

/// `f5bigip.ltm.VirtualServer` Configures Virtual Server
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource (example: `/Common/test-virtualserver` ) or `partition + directory + name` of the resource (example: `/Common/test/test-virtualserver` ).
/// When including directory in `fullpath` we have to make sure it is created in the given partition before using it.
///
///
///
/// ## Importing
///
/// An existing virtual-server can be imported into this resource by supplying virtual-server Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_virtual_server.http /Common/terraform_vs_http
/// ```
class VirtualServer extends pulumi.CustomResource {
  /// List of client context profiles associated on the virtual server. Not mutually exclusive with profiles and server_profiles
  late final pulumi.Output<List<String>?> clientProfiles;
  /// Specifies the maximum number of connections allowed for the virtual server.
  late final pulumi.Output<int> connectionLimit;
  late final pulumi.Output<String> defaultPersistenceProfile;
  /// Description of Virtual server
  late final pulumi.Output<String?> description;
  /// Destination IP
  late final pulumi.Output<String?> destination;
  /// Specifies a fallback persistence profile for the Virtual Server to use when the default persistence profile is not available.
  late final pulumi.Output<String> fallbackPersistenceProfile;
  /// Applies the specified AFM policy to the virtual in an enforcing way,when creating a new virtual, if this parameter is not specified, the enforced is disabled.This should be in full path ex: `/Common/afm-test-policy`.
  late final pulumi.Output<String> firewallEnforcedPolicy;
  /// Specifies a network protocol name you want the system to use to direct traffic on this virtual server. The default is `tcp`. valid options are [`any`,`udp`,`tcp`]
  late final pulumi.Output<String?> ipProtocol;
  /// The iRules list you want run on this virtual server. iRules help automate the intercepting, processing, and routing of application traffic.
  late final pulumi.Output<List<String>?> irules;
  /// Mask can either be in CIDR notation or decimal, i.e.: 24 or 255.255.255.0. A CIDR mask of 0 is the same as 0.0.0.0
  late final pulumi.Output<String> mask;
  /// Name of the virtual server
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> perFlowRequestAccessPolicy;
  /// List of persistence profiles associated with the Virtual Server.
  late final pulumi.Output<List<String>?> persistenceProfiles;
  /// Specifies the policies for the virtual server.
  late final pulumi.Output<List<String>?> policies;
  /// Default pool name
  late final pulumi.Output<String?> pool;
  /// Listen port for the virtual server
  late final pulumi.Output<int> port;
  /// List of profiles associated both client and server contexts on the virtual server. This includes protocol, ssl, http, etc.
  late final pulumi.Output<List<String>> profiles;
  /// Specifies the log profile applied to the virtual server.
  late final pulumi.Output<List<String>?> securityLogProfiles;
  /// List of server context profiles associated on the virtual server. Not mutually exclusive with profiles and client_profiles
  late final pulumi.Output<List<String>?> serverProfiles;
  /// Specifies the name of an existing SNAT pool that you want the virtual server to use to implement selective and intelligent SNATs.
  late final pulumi.Output<String> snatpool;
  /// Specifies an IP address or network from which the virtual server will accept traffic.
  late final pulumi.Output<String> source;
  /// Can be either omitted for `none` or the values `automap` options : [`snat`,`automap`,`none`].
  late final pulumi.Output<String> sourceAddressTranslation;
  /// Specifies whether the system preserves the source port of the connection. The default is `preserve`.
  late final pulumi.Output<String> sourcePort;
  /// Specifies whether the virtual server and its resources are available for load balancing. The default is Enabled
  late final pulumi.Output<String?> state;
  /// Specifies destination traffic matching information to which the virtual server sends traffic
  late final pulumi.Output<String> trafficmatchingCriteria;
  /// Enables or disables address translation for the virtual server. Turn address translation off for a virtual server if you want to use the virtual server to load balance connections to any address. This option is useful when the system is load balancing devices that have the same IP address.
  late final pulumi.Output<String?> translateAddress;
  /// Enables or disables port translation. Turn port translation off for a virtual server if you want to use the virtual server to load balance connections to any service
  late final pulumi.Output<String?> translatePort;
  /// The virtual server is enabled/disabled on this set of VLANs,enable/disabled will be desided by attribute `vlan_enabled`
  late final pulumi.Output<List<String>?> vlans;
  /// Enables the virtual server on the VLANs specified by the `vlans` option.
  /// By default it is `false` i.e vlanDisabled on specified vlans, if we want enable virtual server on VLANs specified by `vlans`, mark this attribute to `true`.
  late final pulumi.Output<bool?> vlansEnabled;

  /// Creates a new [VirtualServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualServer]. {@macro pulumi_ltm_virtual_server_virtual_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualServer(
    String name, {
    VirtualServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/virtualServer:VirtualServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientProfiles = registerOutput<List<String>?>('clientProfiles');
    connectionLimit = registerOutput<int>('connectionLimit');
    defaultPersistenceProfile = registerOutput<String>('defaultPersistenceProfile');
    description = registerOutput<String?>('description');
    destination = registerOutput<String?>('destination');
    fallbackPersistenceProfile = registerOutput<String>('fallbackPersistenceProfile');
    firewallEnforcedPolicy = registerOutput<String>('firewallEnforcedPolicy');
    ipProtocol = registerOutput<String?>('ipProtocol');
    irules = registerOutput<List<String>?>('irules');
    mask = registerOutput<String>('mask');
    this.name = registerOutput<String>('name');
    perFlowRequestAccessPolicy = registerOutput<String>('perFlowRequestAccessPolicy');
    persistenceProfiles = registerOutput<List<String>?>('persistenceProfiles');
    policies = registerOutput<List<String>?>('policies');
    pool = registerOutput<String?>('pool');
    port = registerOutput<int>('port');
    profiles = registerOutput<List<String>>('profiles');
    securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    serverProfiles = registerOutput<List<String>?>('serverProfiles');
    snatpool = registerOutput<String>('snatpool');
    source = registerOutput<String>('source');
    sourceAddressTranslation = registerOutput<String>('sourceAddressTranslation');
    sourcePort = registerOutput<String>('sourcePort');
    state = registerOutput<String?>('state');
    trafficmatchingCriteria = registerOutput<String>('trafficmatchingCriteria');
    translateAddress = registerOutput<String?>('translateAddress');
    translatePort = registerOutput<String?>('translatePort');
    vlans = registerOutput<List<String>?>('vlans');
    vlansEnabled = registerOutput<bool?>('vlansEnabled');
  }

  /// Gets an existing [VirtualServer] resource's state with the given [name] and [id].
  static VirtualServer get(
    String name,
    pulumi.Input<String> id, {
    VirtualServerState? state,
  }) {
    return VirtualServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/virtualServer:VirtualServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientProfiles = registerOutput<List<String>?>('clientProfiles');
    connectionLimit = registerOutput<int>('connectionLimit');
    defaultPersistenceProfile = registerOutput<String>('defaultPersistenceProfile');
    description = registerOutput<String?>('description');
    destination = registerOutput<String?>('destination');
    fallbackPersistenceProfile = registerOutput<String>('fallbackPersistenceProfile');
    firewallEnforcedPolicy = registerOutput<String>('firewallEnforcedPolicy');
    ipProtocol = registerOutput<String?>('ipProtocol');
    irules = registerOutput<List<String>?>('irules');
    mask = registerOutput<String>('mask');
    this.name = registerOutput<String>('name');
    perFlowRequestAccessPolicy = registerOutput<String>('perFlowRequestAccessPolicy');
    persistenceProfiles = registerOutput<List<String>?>('persistenceProfiles');
    policies = registerOutput<List<String>?>('policies');
    pool = registerOutput<String?>('pool');
    port = registerOutput<int>('port');
    profiles = registerOutput<List<String>>('profiles');
    securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    serverProfiles = registerOutput<List<String>?>('serverProfiles');
    snatpool = registerOutput<String>('snatpool');
    source = registerOutput<String>('source');
    sourceAddressTranslation = registerOutput<String>('sourceAddressTranslation');
    sourcePort = registerOutput<String>('sourcePort');
    this.state = registerOutput<String?>('state');
    trafficmatchingCriteria = registerOutput<String>('trafficmatchingCriteria');
    translateAddress = registerOutput<String?>('translateAddress');
    translatePort = registerOutput<String?>('translatePort');
    vlans = registerOutput<List<String>?>('vlans');
    vlansEnabled = registerOutput<bool?>('vlansEnabled');
  }
}
