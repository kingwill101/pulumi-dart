// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExternalAddress resources.
class ExternalAddressState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;
  /// The external IP address of a workload VM.
  final pulumi.Input<String>? externalIp;
  /// The internal IP address of a workload VM.
  final pulumi.Input<String>? internalIp;
  /// The ID of the external IP Address.
  final pulumi.Input<String>? name;
  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String>? parent;
  /// State of the resource.
  final pulumi.Input<String>? state;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ExternalAddressState].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this resource.
  /// [externalIp] The external IP address of a workload VM.
  /// [internalIp] The internal IP address of a workload VM.
  /// [name] The ID of the external IP Address.
  /// [parent] The resource name of the private cloud to create a new external address in.
  /// [state] State of the resource.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  ExternalAddressState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? externalIp,
    pulumi.Output<String>? internalIp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalIp = pulumi.Input.asOptionalInput<String>(externalIp),
      internalIp = pulumi.Input.asOptionalInput<String>(internalIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'externalIp': ?externalIp,
      'internalIp': ?internalIp,
      'name': ?name,
      'parent': ?parent,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ExternalAddressState.fromMap(Map<String, dynamic> map) {
    return ExternalAddressState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<String>(map['externalIp'] as String),
      internalIp: map['internalIp'] == null ? null : pulumi.Output.create<String>(map['internalIp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

