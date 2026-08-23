// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubSharedAccessPolicy {
  /// The name of the shared access policy.
  final pulumi.Input<String>? keyName;
  /// The permissions assigned to the shared access policy.
  final pulumi.Input<String>? permissions;
  /// The primary key.
  final pulumi.Input<String>? primaryKey;
  /// The secondary key.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [IoTHubSharedAccessPolicy].
  /// [keyName] The name of the shared access policy.
  /// [permissions] The permissions assigned to the shared access policy.
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  const IoTHubSharedAccessPolicy({
    this.keyName,
    this.permissions,
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'permissions': ?permissions,
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory IoTHubSharedAccessPolicy.fromMap(Map<String, dynamic> map) {
    return IoTHubSharedAccessPolicy(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
