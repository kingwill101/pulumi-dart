// ignore_for_file: unused_element, unnecessary_cast


class GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}

