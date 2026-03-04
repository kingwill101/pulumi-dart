// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  ///
  /// &lt;a name="nested_properties_apex_details"&gt;&lt;/a&gt;The `apex_details` block contains:
  final pulumi.Input<String> email;

  /// Creates a new [AutonomousDatabasePropertiesCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  AutonomousDatabasePropertiesCustomerContact({required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory AutonomousDatabasePropertiesCustomerContact.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutonomousDatabasePropertiesCustomerContact(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
