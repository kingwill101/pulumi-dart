// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstancePrivateLinkServiceConnectionStateProperty {
  /// The private link service connection description.
  final pulumi.Input<String> description;

  /// The private link service connection status.
  final pulumi.Input<String> status;

  /// Creates a new [ManagedInstancePrivateLinkServiceConnectionStateProperty].
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  ManagedInstancePrivateLinkServiceConnectionStateProperty({
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'status': status};
  }

  factory ManagedInstancePrivateLinkServiceConnectionStateProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedInstancePrivateLinkServiceConnectionStateProperty(
      description: pulumi.Input.fromValue(map['description'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
