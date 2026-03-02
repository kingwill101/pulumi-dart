// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_policy_external_ip.dart';
import 'get_network_policy_internet_access.dart';

/// Result data returned by getNetworkPolicy.
class GetNetworkPolicyResult {
  final String createTime;
  final String description;
  final String edgeServicesCidr;
  final List<GetNetworkPolicyExternalIp> externalIps;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetNetworkPolicyInternetAccess> internetAccesses;
  final String location;
  final String name;
  final String? project;
  final String uid;
  final String updateTime;
  final String vmwareEngineNetwork;
  final String vmwareEngineNetworkCanonical;

  /// Creates a new [GetNetworkPolicyResult].
  /// [createTime] Required.
  /// [description] Required.
  /// [edgeServicesCidr] Required.
  /// [externalIps] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetAccesses] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [vmwareEngineNetwork] Required.
  /// [vmwareEngineNetworkCanonical] Required.
  GetNetworkPolicyResult({
    required this.createTime,
    required this.description,
    required this.edgeServicesCidr,
    required this.externalIps,
    required this.id,
    required this.internetAccesses,
    required this.location,
    required this.name,
    this.project,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'edgeServicesCidr': edgeServicesCidr,
      'externalIps': pulumi.Input.encodeList<GetNetworkPolicyExternalIp, Map<String, dynamic>>(externalIps, (value) => value.toMap()),
      'id': id,
      'internetAccesses': pulumi.Input.encodeList<GetNetworkPolicyInternetAccess, Map<String, dynamic>>(internetAccesses, (value) => value.toMap()),
      'location': location,
      'name': name,
      'project': ?project,
      'uid': uid,
      'updateTime': updateTime,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical,
    };
  }

  factory GetNetworkPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      edgeServicesCidr: map['edgeServicesCidr'] as String,
      externalIps: pulumi.Input.decodeList<GetNetworkPolicyExternalIp>(map['externalIps'], (value) => GetNetworkPolicyExternalIp.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      internetAccesses: pulumi.Input.decodeList<GetNetworkPolicyInternetAccess>(map['internetAccesses'], (value) => GetNetworkPolicyInternetAccess.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project']! as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}

