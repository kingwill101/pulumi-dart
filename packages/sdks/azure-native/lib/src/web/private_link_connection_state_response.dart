// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of a private link connection
class PrivateLinkConnectionStateResponse {
  /// ActionsRequired for a private link connection
  final pulumi.Input<String>? actionsRequired;

  /// Description of a private link connection
  final pulumi.Input<String>? description;

  /// Status of a private link connection
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkConnectionStateResponse].
  /// [actionsRequired] ActionsRequired for a private link connection
  /// [description] Description of a private link connection
  /// [status] Status of a private link connection
  PrivateLinkConnectionStateResponse({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConnectionStateResponse(
      actionsRequired: (() {
        final guardedValue = map['actionsRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
