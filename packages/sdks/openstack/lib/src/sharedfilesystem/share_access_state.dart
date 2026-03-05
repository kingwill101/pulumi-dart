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
    this.accessKey,
    this.accessLevel,
    this.accessTo,
    this.accessType,
    this.region,
    this.shareId,
    this.state,
  });

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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessTo: (() { final guardedValue = map['accessTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

