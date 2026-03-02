// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of a private link connection
class PrivateLinkConnectionState {
  /// ActionsRequired for a private link connection
  final pulumi.Input<String>? actionsRequired;
  /// Description of a private link connection
  final pulumi.Input<String>? description;
  /// Status of a private link connection
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkConnectionState].
  /// [actionsRequired] ActionsRequired for a private link connection
  /// [description] Description of a private link connection
  /// [status] Status of a private link connection
  PrivateLinkConnectionState({
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

  factory PrivateLinkConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

