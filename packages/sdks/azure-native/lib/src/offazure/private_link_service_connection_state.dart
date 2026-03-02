// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Connection State
class PrivateLinkServiceConnectionState {
  /// actions required
  final pulumi.Input<String>? actionsRequired;
  /// description string
  final pulumi.Input<String>? description;
  /// state status
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] actions required
  /// [description] description string
  /// [status] state status
  PrivateLinkServiceConnectionState({
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

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

