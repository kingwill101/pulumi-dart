// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of read-only information about the state of the connection to the private remote resource.
class PrivateLinkConnectionStateResponse {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final pulumi.Input<String> actionsRequired;
  /// The reason for approval/rejection of the connection.
  final pulumi.Input<String> description;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the remote resource/service.
  final pulumi.Input<String> status;

  /// Creates a new [PrivateLinkConnectionStateResponse].
  /// [actionsRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval/rejection of the connection.
  /// [status] Indicates whether the connection has been Approved/Rejected/Removed by the owner of the remote resource/service.
  PrivateLinkConnectionStateResponse({
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

  factory PrivateLinkConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConnectionStateResponse(
      actionsRequired: (map['actionsRequired'] as String).input(),
      description: (map['description'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

