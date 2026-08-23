// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_vpc_network.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const NetworkState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcNetworks: (() { final guardedValue = map['vpcNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkVpcNetwork>(guardedValue, (value) => NetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
