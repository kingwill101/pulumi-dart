// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_policy_external_ip.dart';
import 'get_network_policy_internet_access.dart';

/// Result data returned by getNetworkPolicy.
class GetNetworkPolicyResult {
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final String? edgeServicesCidr;
  final List<GetNetworkPolicyExternalIp>? externalIps;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetNetworkPolicyInternetAccess>? internetAccesses;
  final String? location;
  final String? name;
  final String? project;
  final String? uid;
  final String? updateTime;
  final String? vmwareEngineNetwork;
  final String? vmwareEngineNetworkCanonical;

  /// Creates a new [GetNetworkPolicyResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [edgeServicesCidr] Optional.
  /// [externalIps] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internetAccesses] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [vmwareEngineNetwork] Optional.
  /// [vmwareEngineNetworkCanonical] Optional.
  const GetNetworkPolicyResult({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.edgeServicesCidr,
    this.externalIps,
    this.id,
    this.internetAccesses,
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
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'edgeServicesCidr': ?edgeServicesCidr,
      'externalIps': ?(() { final guardedValue = externalIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkPolicyExternalIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'internetAccesses': ?(() { final guardedValue = internetAccesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkPolicyInternetAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': ?vmwareEngineNetworkCanonical,
    };
  }

  factory GetNetworkPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edgeServicesCidr: (() { final guardedValue = map['edgeServicesCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIps: (() { final guardedValue = map['externalIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkPolicyExternalIp>(guardedValue, (value) => GetNetworkPolicyExternalIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetAccesses: (() { final guardedValue = map['internetAccesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkPolicyInternetAccess>(guardedValue, (value) => GetNetworkPolicyInternetAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetwork: (() { final guardedValue = map['vmwareEngineNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetworkCanonical: (() { final guardedValue = map['vmwareEngineNetworkCanonical']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
