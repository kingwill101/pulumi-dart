// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final pulumi.Input<String> email;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  const GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
