// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_vpc_network.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? project;
  final String? state;
  final String? type;
  final String? uid;
  final String? updateTime;
  final List<GetNetworkVpcNetwork>? vpcNetworks;

  /// Creates a new [GetNetworkResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [type] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [vpcNetworks] Optional.
  const GetNetworkResult({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.project,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vpcNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vpcNetworks': ?(() { final guardedValue = vpcNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkVpcNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcNetworks: (() { final guardedValue = map['vpcNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkVpcNetwork>(guardedValue, (value) => GetNetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
