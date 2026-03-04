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
    this.createTime,
    this.description,
    this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.location,
    this.name,
    this.project,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'edgeServicesCidr': ?edgeServicesCidr,
      'externalIp':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkPolicyExternalIp,
            Map<String, dynamic>
          >(externalIp, (value) => value.toMap()),
      'internetAccess':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkPolicyInternetAccess,
            Map<String, dynamic>
          >(internetAccess, (value) => value.toMap()),
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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeServicesCidr: (() {
        final guardedValue = map['edgeServicesCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalIp: (() {
        final guardedValue = map['externalIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPolicyExternalIp.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      internetAccess: (() {
        final guardedValue = map['internetAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPolicyInternetAccess.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareEngineNetwork: (() {
        final guardedValue = map['vmwareEngineNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareEngineNetworkCanonical: (() {
        final guardedValue = map['vmwareEngineNetworkCanonical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
