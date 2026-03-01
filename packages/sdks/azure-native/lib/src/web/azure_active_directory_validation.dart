// ignore_for_file: unused_element, unnecessary_cast

import 'default_authorization_policy.dart';
import 'jwt_claim_checks.dart';

/// The configuration settings of the Azure Active Directory token validation flow.
class AzureActiveDirectoryValidation {
  /// The list of audiences that can make successful authentication/authorization requests.
  final List<String>? allowedAudiences;
  /// The configuration settings of the default authorization policy.
  final DefaultAuthorizationPolicy? defaultAuthorizationPolicy;
  /// The configuration settings of the checks that should be made while validating the JWT Claims.
  final JwtClaimChecks? jwtClaimChecks;

  /// Creates a new [AzureActiveDirectoryValidation].
  /// [allowedAudiences] The list of audiences that can make successful authentication/authorization requests.
  /// [defaultAuthorizationPolicy] The configuration settings of the default authorization policy.
  /// [jwtClaimChecks] The configuration settings of the checks that should be made while validating the JWT Claims.
  AzureActiveDirectoryValidation({
    this.allowedAudiences,
    this.defaultAuthorizationPolicy,
    this.jwtClaimChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'defaultAuthorizationPolicy': ?defaultAuthorizationPolicy == null ? null : defaultAuthorizationPolicy!.toMap(),
      'jwtClaimChecks': ?jwtClaimChecks == null ? null : jwtClaimChecks!.toMap(),
    };
  }

  factory AzureActiveDirectoryValidation.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryValidation(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      defaultAuthorizationPolicy: map['defaultAuthorizationPolicy'] == null ? null : DefaultAuthorizationPolicy.fromMap((map['defaultAuthorizationPolicy'] as Map).cast<String, dynamic>()),
      jwtClaimChecks: map['jwtClaimChecks'] == null ? null : JwtClaimChecks.fromMap((map['jwtClaimChecks'] as Map).cast<String, dynamic>()),
    );
  }
}

