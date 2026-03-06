// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final pulumi.Input<String> email;

  /// Creates a new [GetCloudExadataInfrastructurePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  const GetCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetCloudExadataInfrastructurePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructurePropertyCustomerContact(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

