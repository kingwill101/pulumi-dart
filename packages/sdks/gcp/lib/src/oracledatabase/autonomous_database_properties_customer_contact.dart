// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  ///
  /// &lt;a name="nestedPropertiesApexDetails"&gt;&lt;/a&gt;The `apexDetails` block contains:
  final pulumi.Input<String> email;

  /// Creates a new [AutonomousDatabasePropertiesCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  const AutonomousDatabasePropertiesCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AutonomousDatabasePropertiesCustomerContact.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesCustomerContact(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
