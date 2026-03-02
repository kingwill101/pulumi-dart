// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final pulumi.Input<String> email;

  /// Creates a new [GetAutonomousDatabasePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  GetAutonomousDatabasePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetAutonomousDatabasePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyCustomerContact(
      email: (map['email'] as String).input(),
    );
  }
}

