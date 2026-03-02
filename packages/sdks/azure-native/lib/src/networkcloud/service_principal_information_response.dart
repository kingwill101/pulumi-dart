// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePrincipalInformationResponse {
  /// The application ID, also known as client ID, of the service principal.
  final pulumi.Input<String> applicationId;
  /// The password of the service principal.
  final pulumi.Input<String> password;
  /// The principal ID, also known as the object ID, of the service principal.
  final pulumi.Input<String> principalId;
  /// The tenant ID, also known as the directory ID, of the tenant in which the service principal is created.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ServicePrincipalInformationResponse].
  /// [applicationId] The application ID, also known as client ID, of the service principal.
  /// [password] The password of the service principal.
  /// [principalId] The principal ID, also known as the object ID, of the service principal.
  /// [tenantId] The tenant ID, also known as the directory ID, of the tenant in which the service principal is created.
  ServicePrincipalInformationResponse({
    required this.applicationId,
    required this.password,
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'password': password,
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory ServicePrincipalInformationResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalInformationResponse(
      applicationId: (map['applicationId'] as String).input(),
      password: (map['password'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

