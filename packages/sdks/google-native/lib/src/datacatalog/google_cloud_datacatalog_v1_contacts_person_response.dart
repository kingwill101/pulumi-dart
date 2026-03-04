// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A contact person for the entry.
class GoogleCloudDatacatalogV1ContactsPersonResponse {
  /// Designation of the person, for example, Data Steward.
  final pulumi.Input<String> designation;

  /// Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  final pulumi.Input<String> email;

  /// Creates a new [GoogleCloudDatacatalogV1ContactsPersonResponse].
  /// [designation] Designation of the person, for example, Data Steward.
  /// [email] Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  GoogleCloudDatacatalogV1ContactsPersonResponse({
    required this.designation,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'designation': designation, 'email': email};
  }

  factory GoogleCloudDatacatalogV1ContactsPersonResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1ContactsPersonResponse(
      designation: pulumi.Input.fromValue(map['designation'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
