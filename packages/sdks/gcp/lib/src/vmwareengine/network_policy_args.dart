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
  NetworkPolicyArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> edgeServicesCidr,
    pulumi.Output<NetworkPolicyExternalIp>? externalIp,
    pulumi.Output<NetworkPolicyInternetAccess>? internetAccess,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareEngineNetwork,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      edgeServicesCidr = pulumi.Input.asInput<String>(edgeServicesCidr),
      externalIp = pulumi.Input.asOptionalInput<NetworkPolicyExternalIp>(externalIp),
      internetAccess = pulumi.Input.asOptionalInput<NetworkPolicyInternetAccess>(internetAccess),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareEngineNetwork = pulumi.Input.asInput<String>(vmwareEngineNetwork);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      edgeServicesCidr: pulumi.Output.create<String>(map['edgeServicesCidr'] as String),
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<NetworkPolicyExternalIp>(NetworkPolicyExternalIp.fromMap((map['externalIp'] as Map).cast<String, dynamic>())),
      internetAccess: map['internetAccess'] == null ? null : pulumi.Output.create<NetworkPolicyInternetAccess>(NetworkPolicyInternetAccess.fromMap((map['internetAccess'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareEngineNetwork: pulumi.Output.create<String>(map['vmwareEngineNetwork'] as String),
    );
  }
}

