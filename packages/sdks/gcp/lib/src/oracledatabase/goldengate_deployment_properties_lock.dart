// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesLock {
  /// The compartment id.
  final pulumi.Input<String?>? compartmentId;
  /// The date and time that the GoldengateDeployment was created.
  final pulumi.Input<String?>? createTime;
  /// The message.
  final pulumi.Input<String?>? message;
  /// The related resource id.
  final pulumi.Input<String?>? relatedResourceId;
  /// The type of lock.
  /// Possible values:
  /// FULL
  /// DELETE
  final pulumi.Input<String?>? type;

  /// Creates a new [GoldengateDeploymentPropertiesLock].
  /// [compartmentId] The compartment id.
  /// [createTime] The date and time that the GoldengateDeployment was created.
  /// [message] The message.
  /// [relatedResourceId] The related resource id.
  /// [type] The type of lock.
  const GoldengateDeploymentPropertiesLock({
    this.compartmentId,
    this.createTime,
    this.message,
    this.relatedResourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compartmentId': ?compartmentId,
      'createTime': ?createTime,
      'message': ?message,
      'relatedResourceId': ?relatedResourceId,
      'type': ?type,
    };
  }

  factory GoldengateDeploymentPropertiesLock.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesLock(
      compartmentId: (() { final guardedValue = map['compartmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedResourceId: (() { final guardedValue = map['relatedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
