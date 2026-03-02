// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_service.dart';

/// {@template pulumi_vmwareengine_v1_network_policy_args_doc}
/// The set of arguments for NetworkPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_network_policy_args_doc}
class NetworkPolicyArgs {
  /// Optional. User-provided description for this network policy.
  final pulumi.Input<String>? description;
  /// IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final pulumi.Input<String> edgeServicesCidr;
  /// Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  final pulumi.Input<NetworkService>? externalIp;
  /// Network service that allows VMware workloads to access the internet.
  final pulumi.Input<NetworkService>? internetAccess;
  final pulumi.Input<String>? location;
  /// Required. The user-provided identifier of the network policy to be created. This identifier must be unique within parent `projects/{my-project}/locations/{us-central1}/networkPolicies` and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> networkPolicyId;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final pulumi.Input<String>? vmwareEngineNetwork;

  /// Creates a new [NetworkPolicyArgs].
  /// [description] Optional. User-provided description for this network policy.
  /// [edgeServicesCidr] IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  /// [externalIp] Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  /// [internetAccess] Network service that allows VMware workloads to access the internet.
  /// [location] Optional.
  /// [networkPolicyId] Required. The user-provided identifier of the network policy to be created. This identifier must be unique within parent `projects/{my-project}/locations/{us-central1}/networkPolicies` and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [vmwareEngineNetwork] Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  NetworkPolicyArgs({
    this.description,
    required this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.location,
    required this.networkPolicyId,
    this.project,
    this.requestId,
    this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'edgeServicesCidr': edgeServicesCidr,
      'externalIp': ?pulumi.Input.mapOptionalInputValue<NetworkService, Map<String, dynamic>>(externalIp, (value) => value.toMap()),
      'internetAccess': ?pulumi.Input.mapOptionalInputValue<NetworkService, Map<String, dynamic>>(internetAccess, (value) => value.toMap()),
      'location': ?location,
      'networkPolicyId': networkPolicyId,
      'project': ?project,
      'requestId': ?requestId,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
    };
  }

  factory NetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      edgeServicesCidr: (map['edgeServicesCidr'] as String).input(),
      externalIp: map['externalIp'] == null ? null : (NetworkService.fromMap((map['externalIp']! as Map).cast<String, dynamic>())).input(),
      internetAccess: map['internetAccess'] == null ? null : (NetworkService.fromMap((map['internetAccess']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkPolicyId: (map['networkPolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null ? null : (map['vmwareEngineNetwork']! as String).input(),
    );
  }
}

