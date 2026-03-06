// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_external_ip.dart';
import 'network_policy_internet_access.dart';

/// {@template pulumi_vmwareengine_network_policy_network_policy_args_doc}
/// The set of arguments for NetworkPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_network_policy_network_policy_args_doc}
class NetworkPolicyArgs {
  /// User-provided description for this network policy.
  final pulumi.Input<String>? description;
  /// IP address range in CIDR notation used to create internet access and external IP access.
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any
  /// prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final pulumi.Input<String> edgeServicesCidr;
  /// Network service that allows External IP addresses to be assigned to VMware workloads.
  /// This service can only be enabled when internetAccess is also enabled.
  /// Structure is documented below.
  final pulumi.Input<NetworkPolicyExternalIp>? externalIp;
  /// Network service that allows VMware workloads to access the internet.
  /// Structure is documented below.
  final pulumi.Input<NetworkPolicyInternetAccess>? internetAccess;
  /// The resource name of the location (region) to create the new network policy in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-central1
  final pulumi.Input<String> location;
  /// The ID of the Network Policy.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final pulumi.Input<String> vmwareEngineNetwork;

  /// Creates a new [NetworkPolicyArgs].
  /// [description] User-provided description for this network policy.
  /// [edgeServicesCidr] IP address range in CIDR notation used to create internet access and external IP access.
  /// [externalIp] Network service that allows External IP addresses to be assigned to VMware workloads.
  /// [internetAccess] Network service that allows VMware workloads to access the internet.
  /// [location] The resource name of the location (region) to create the new network policy in.
  /// [name] The ID of the Network Policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network. Specify the name in the following form:
  const NetworkPolicyArgs({
    this.description,
    required this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    required this.location,
    this.name,
    this.project,
    required this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'edgeServicesCidr': edgeServicesCidr,
      'externalIp': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyExternalIp, Map<String, dynamic>>(externalIp, (value) => value.toMap()),
      'internetAccess': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyInternetAccess, Map<String, dynamic>>(internetAccess, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'project': ?project,
      'vmwareEngineNetwork': vmwareEngineNetwork,
    };
  }

  factory NetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeServicesCidr: pulumi.Input.fromValue(map['edgeServicesCidr'] as String),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyExternalIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internetAccess: (() { final guardedValue = map['internetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyInternetAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareEngineNetwork: pulumi.Input.fromValue(map['vmwareEngineNetwork'] as String),
    );
  }
}

