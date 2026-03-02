// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity provider details.
class IdentityProviderDetailsResponse {
  /// The base authority for Azure Active Directory authentication.
  final pulumi.Input<String>? aadAuthority;
  /// The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? applicationId;
  /// The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? audience;
  /// The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? objectId;
  /// The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [IdentityProviderDetailsResponse].
  /// [aadAuthority] The base authority for Azure Active Directory authentication.
  /// [applicationId] The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [audience] The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [objectId] The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [tenantId] The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  IdentityProviderDetailsResponse({
    this.aadAuthority,
    this.applicationId,
    this.audience,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': ?aadAuthority,
      'applicationId': ?applicationId,
      'audience': ?audience,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory IdentityProviderDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IdentityProviderDetailsResponse(
      aadAuthority: map['aadAuthority'] == null ? null : (map['aadAuthority'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

