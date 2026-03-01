// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_external_ip.dart';
import 'network_policy_internet_access.dart';

/// Input properties used for looking up and filtering NetworkPolicy resources.
class NetworkPolicyState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-provided description for this network policy.
  final pulumi.Input<String>? description;
  /// IP address range in CIDR notation used to create internet access and external IP access.
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any
  /// prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final pulumi.Input<String>? edgeServicesCidr;
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
  final pulumi.Input<String>? location;
  /// The ID of the Network Policy.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final pulumi.Input<String>? vmwareEngineNetwork;
  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  final pulumi.Input<String>? vmwareEngineNetworkCanonical;

  /// Creates a new [NetworkPolicyState].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this network policy.
  /// [edgeServicesCidr] IP address range in CIDR notation used to create internet access and external IP access.
  /// [externalIp] Network service that allows External IP addresses to be assigned to VMware workloads.
  /// [internetAccess] Network service that allows VMware workloads to access the internet.
  /// [location] The resource name of the location (region) to create the new network policy in.
  /// [name] The ID of the Network Policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form:
  NetworkPolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? edgeServicesCidr,
    pulumi.Output<NetworkPolicyExternalIp>? externalIp,
    pulumi.Output<NetworkPolicyInternetAccess>? internetAccess,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? vmwareEngineNetwork,
    pulumi.Output<String>? vmwareEngineNetworkCanonical,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      edgeServicesCidr = pulumi.Input.asOptionalInput<String>(edgeServicesCidr),
      externalIp = pulumi.Input.asOptionalInput<NetworkPolicyExternalIp>(externalIp),
      internetAccess = pulumi.Input.asOptionalInput<NetworkPolicyInternetAccess>(internetAccess),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vmwareEngineNetwork = pulumi.Input.asOptionalInput<String>(vmwareEngineNetwork),
      vmwareEngineNetworkCanonical = pulumi.Input.asOptionalInput<String>(vmwareEngineNetworkCanonical);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'edgeServicesCidr': ?edgeServicesCidr,
      'externalIp': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyExternalIp, Map<String, dynamic>>(externalIp, (value) => value.toMap()),
      'internetAccess': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyInternetAccess, Map<String, dynamic>>(internetAccess, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': ?vmwareEngineNetworkCanonical,
    };
  }

  factory NetworkPolicyState.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      edgeServicesCidr: map['edgeServicesCidr'] == null ? null : pulumi.Output.create<String>(map['edgeServicesCidr'] as String),
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<NetworkPolicyExternalIp>(NetworkPolicyExternalIp.fromMap((map['externalIp'] as Map).cast<String, dynamic>())),
      internetAccess: map['internetAccess'] == null ? null : pulumi.Output.create<NetworkPolicyInternetAccess>(NetworkPolicyInternetAccess.fromMap((map['internetAccess'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null ? null : pulumi.Output.create<String>(map['vmwareEngineNetwork'] as String),
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] == null ? null : pulumi.Output.create<String>(map['vmwareEngineNetworkCanonical'] as String),
    );
  }
}

