// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity provider input.
class IdentityProviderInput {
  /// The base authority for Azure Active Directory authentication.
  final pulumi.Input<String> aadAuthority;
  /// The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String> applicationId;
  /// The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String> audience;
  /// The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String> objectId;
  /// The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String> tenantId;

  /// Creates a new [IdentityProviderInput].
  /// [aadAuthority] The base authority for Azure Active Directory authentication.
  /// [applicationId] The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [audience] The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [objectId] The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [tenantId] The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  IdentityProviderInput({
    required this.aadAuthority,
    required this.applicationId,
    required this.audience,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': aadAuthority,
      'applicationId': applicationId,
      'audience': audience,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory IdentityProviderInput.fromMap(Map<String, dynamic> map) {
    return IdentityProviderInput(
      aadAuthority: (map['aadAuthority'] as String).input(),
      applicationId: (map['applicationId'] as String).input(),
      audience: (map['audience'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

