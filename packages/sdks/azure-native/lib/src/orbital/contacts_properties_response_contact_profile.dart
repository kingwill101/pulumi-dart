// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the contact profile resource.
class ContactsPropertiesResponseContactProfile {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [ContactsPropertiesResponseContactProfile].
  /// [id] Resource ID.
  const ContactsPropertiesResponseContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactsPropertiesResponseContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactsPropertiesResponseContactProfile(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

