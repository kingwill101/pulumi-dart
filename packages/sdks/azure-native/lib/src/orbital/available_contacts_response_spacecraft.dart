// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the spacecraft resource.
class AvailableContactsResponseSpacecraft {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [AvailableContactsResponseSpacecraft].
  /// [id] Resource ID.
  const AvailableContactsResponseSpacecraft({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AvailableContactsResponseSpacecraft.fromMap(Map<String, dynamic> map) {
    return AvailableContactsResponseSpacecraft(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

