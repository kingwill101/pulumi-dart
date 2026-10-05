// ignore_for_file: unused_element, unnecessary_cast

import 'network_service_response.dart';

/// Result data returned by getNetworkPolicy.
class GetNetworkPolicyResult {
  /// Creation time of this resource.
  final String? createTime;
  /// Optional. User-provided description for this network policy.
  final String? description;
  /// IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final String? edgeServicesCidr;
  /// Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  final NetworkServiceResponse? externalIp;
  /// Network service that allows VMware workloads to access the internet.
  final NetworkServiceResponse? internetAccess;
  /// The resource name of this network policy. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  final String? name;
  /// System-generated unique identifier for the resource.
  final String? uid;
  /// Last update time of this resource.
  final String? updateTime;
  /// Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final String? vmwareEngineNetwork;
  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  final String? vmwareEngineNetworkCanonical;

  /// Creates a new [GetNetworkPolicyResult].
  /// [createTime] Creation time of this resource.
  /// [description] Optional. User-provided description for this network policy.
  /// [edgeServicesCidr] IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  /// [externalIp] Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  /// [internetAccess] Network service that allows VMware workloads to access the internet.
  /// [name] The resource name of this network policy. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vmwareEngineNetwork] Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  const GetNetworkPolicyResult({
    this.createTime,
    this.description,
    this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.name,
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
      'externalIp': ?externalIp?.toMap(),
      'internetAccess': ?internetAccess?.toMap(),
      'name': ?name,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': ?vmwareEngineNetworkCanonical,
    };
  }

  factory GetNetworkPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edgeServicesCidr: (() { final guardedValue = map['edgeServicesCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return NetworkServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      internetAccess: (() { final guardedValue = map['internetAccess']; if (guardedValue == null) return null; return NetworkServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetwork: (() { final guardedValue = map['vmwareEngineNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetworkCanonical: (() { final guardedValue = map['vmwareEngineNetworkCanonical']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
