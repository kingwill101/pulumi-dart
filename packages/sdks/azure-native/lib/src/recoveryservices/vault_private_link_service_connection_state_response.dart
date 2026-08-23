// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets private link service connection state.
class VaultPrivateLinkServiceConnectionStateResponse {
  /// Gets or sets actions required.
  final pulumi.Input<String> actionsRequired;
  /// Gets or sets description.
  final pulumi.Input<String> description;
  /// Gets or sets the status.
  final pulumi.Input<String> status;

  /// Creates a new [VaultPrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Gets or sets actions required.
  /// [description] Gets or sets description.
  /// [status] Gets or sets the status.
  const VaultPrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory VaultPrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return VaultPrivateLinkServiceConnectionStateResponse(
      actionsRequired: pulumi.Input.fromValue(map['actionsRequired'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
