// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the contact profile resource.
class ContactParametersContactProfile {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [ContactParametersContactProfile].
  /// [id] Resource ID.
  ContactParametersContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactParametersContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactParametersContactProfile(
      id: (map['id'] as String).input(),
    );
  }
}

