// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateLinkServiceConnectionStatePropertyResponse {
  /// The actions required for private link service connection.
  final pulumi.Input<String> actionsRequired;
  /// The private link service connection description.
  final pulumi.Input<String> description;
  /// The private link service connection status.
  final pulumi.Input<String> status;

  /// Creates a new [PrivateLinkServiceConnectionStatePropertyResponse].
  /// [actionsRequired] The actions required for private link service connection.
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  PrivateLinkServiceConnectionStatePropertyResponse({
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

  factory PrivateLinkServiceConnectionStatePropertyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStatePropertyResponse(
      actionsRequired: (map['actionsRequired'] as String).input(),
      description: (map['description'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

