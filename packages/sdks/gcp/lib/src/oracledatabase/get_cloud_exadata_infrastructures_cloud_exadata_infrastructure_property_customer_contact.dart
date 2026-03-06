// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final pulumi.Input<String> email;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  const GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

