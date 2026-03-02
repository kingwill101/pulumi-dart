// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_vpc_network.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-provided description for this VMware Engine network.
  final pulumi.Input<String>? description;
  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date befor
  /// The server computes checksums based on the value of other fields in the request.
  final pulumi.Input<String>? etag;
  /// The location where the VMwareEngineNetwork should reside.
  final pulumi.Input<String>? location;
  /// The ID of the VMwareEngineNetwork.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// State of the VMware Engine network.
  final pulumi.Input<String>? state;
  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String>? type;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects,
  /// the internet, and other Google Cloud services.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkVpcNetwork>>? vpcNetworks;

  /// Creates a new [NetworkState].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this VMware Engine network.
  /// [etag] Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date befor
  /// [location] The location where the VMwareEngineNetwork should reside.
  /// [name] The ID of the VMwareEngineNetwork.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] State of the VMware Engine network.
  /// [type] VMware Engine network type.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vpcNetworks] VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects,
  NetworkState({
    this.createTime,
    this.description,
    this.etag,
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
      'description': ?description,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vpcNetworks': ?pulumi.Input.mapOptionalInputValue<List<NetworkVpcNetwork>, List<Map<String, dynamic>>>(vpcNetworks, (value) => pulumi.Input.encodeList<NetworkVpcNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      vpcNetworks: map['vpcNetworks'] == null ? null : (pulumi.Input.decodeList<NetworkVpcNetwork>(map['vpcNetworks']!, (value) => NetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

