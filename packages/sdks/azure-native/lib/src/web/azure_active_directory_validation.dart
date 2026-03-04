// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_authorization_policy.dart';
import 'jwt_claim_checks.dart';

/// The configuration settings of the Azure Active Directory token validation flow.
class AzureActiveDirectoryValidation {
  /// The list of audiences that can make successful authentication/authorization requests.
  final pulumi.Input<List<String>>? allowedAudiences;

  /// The configuration settings of the default authorization policy.
  final pulumi.Input<DefaultAuthorizationPolicy>? defaultAuthorizationPolicy;

  /// The configuration settings of the checks that should be made while validating the JWT Claims.
  final pulumi.Input<JwtClaimChecks>? jwtClaimChecks;

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
      'defaultAuthorizationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DefaultAuthorizationPolicy,
            Map<String, dynamic>
          >(defaultAuthorizationPolicy, (value) => value.toMap()),
      'jwtClaimChecks':
          ?pulumi.Input.mapOptionalInputValue<
            JwtClaimChecks,
            Map<String, dynamic>
          >(jwtClaimChecks, (value) => value.toMap()),
    };
  }

  factory AzureActiveDirectoryValidation.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryValidation(
      allowedAudiences: (() {
        final guardedValue = map['allowedAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      defaultAuthorizationPolicy: (() {
        final guardedValue = map['defaultAuthorizationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefaultAuthorizationPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jwtClaimChecks: (() {
        final guardedValue = map['jwtClaimChecks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JwtClaimChecks.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
