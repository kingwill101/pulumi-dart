// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A contact person for the entry.
class GoogleCloudDatacatalogV1ContactsPerson {
  /// Designation of the person, for example, Data Steward.
  final pulumi.Input<String>? designation;
  /// Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  final pulumi.Input<String>? email;

  /// Creates a new [GoogleCloudDatacatalogV1ContactsPerson].
  /// [designation] Designation of the person, for example, Data Steward.
  /// [email] Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  const GoogleCloudDatacatalogV1ContactsPerson({
    this.designation,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'designation': ?designation,
      'email': ?email,
    };
  }

  factory GoogleCloudDatacatalogV1ContactsPerson.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ContactsPerson(
      designation: (() { final guardedValue = map['designation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

