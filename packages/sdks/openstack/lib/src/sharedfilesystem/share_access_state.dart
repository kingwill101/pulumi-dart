// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShareAccess resources.
class ShareAccessState {
  /// The access credential of the entity granted access.
  final pulumi.Input<String>? accessKey;
  /// The access level to the share. Can either be `rw` or `ro`.
  final pulumi.Input<String>? accessLevel;
  /// The value that defines the access. Can either be an IP
  /// address or a username verified by configured Security Service of the Share Network.
  final pulumi.Input<String>? accessTo;
  /// The access rule type. Can either be an ip, user,
  /// cert, or cephx. cephx support requires an OpenStack environment that supports
  /// Shared Filesystem microversion 2.13 (Mitaka) or later.
  final pulumi.Input<String>? accessType;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share access.
  /// Changing this creates a new share access.
  final pulumi.Input<String>? region;
  /// The UUID of the share to which you are granted access.
  final pulumi.Input<String>? shareId;
  /// The share access state.
  final pulumi.Input<String>? state;

  /// Creates a new [ShareAccessState].
  /// [accessKey] The access credential of the entity granted access.
  /// [accessLevel] The access level to the share. Can either be `rw` or `ro`.
  /// [accessTo] The value that defines the access. Can either be an IP
  /// [accessType] The access rule type. Can either be an ip, user,
  /// [region] The region in which to obtain the V2 Shared File System
  /// [shareId] The UUID of the share to which you are granted access.
  /// [state] The share access state.
  ShareAccessState({
    pulumi.Output<String>? accessKey,
    pulumi.Output<String>? accessLevel,
    pulumi.Output<String>? accessTo,
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareId,
    pulumi.Output<String>? state,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      accessLevel = pulumi.Input.asOptionalInput<String>(accessLevel),
      accessTo = pulumi.Input.asOptionalInput<String>(accessTo),
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accessLevel': ?accessLevel,
      'accessTo': ?accessTo,
      'accessType': ?accessType,
      'region': ?region,
      'shareId': ?shareId,
      'state': ?state,
    };
  }

  factory ShareAccessState.fromMap(Map<String, dynamic> map) {
    return ShareAccessState(
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      accessLevel: map['accessLevel'] == null ? null : pulumi.Output.create<String>(map['accessLevel'] as String),
      accessTo: map['accessTo'] == null ? null : pulumi.Output.create<String>(map['accessTo'] as String),
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

