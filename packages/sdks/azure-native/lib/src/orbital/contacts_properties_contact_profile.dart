// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the contact profile resource.
class ContactsPropertiesContactProfile {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [ContactsPropertiesContactProfile].
  /// [id] Resource ID.
  ContactsPropertiesContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactsPropertiesContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactsPropertiesContactProfile(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

