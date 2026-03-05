// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_eligible_authorization_just_in_time_access_policy.dart';

class DefinitionEligibleAuthorization {
  /// A `just_in_time_access_policy` block as defined below.
  final pulumi.Input<DefinitionEligibleAuthorizationJustInTimeAccessPolicy>? justInTimeAccessPolicy;
  /// The display name of the Azure Active Directory Principal.
  final pulumi.Input<String>? principalDisplayName;
  /// Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final pulumi.Input<String> principalId;
  /// The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [DefinitionEligibleAuthorization].
  /// [justInTimeAccessPolicy] A `just_in_time_access_policy` block as defined below.
  /// [principalDisplayName] The display name of the Azure Active Directory Principal.
  /// [principalId] Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [roleDefinitionId] The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope.
  DefinitionEligibleAuthorization({
    this.justInTimeAccessPolicy,
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justInTimeAccessPolicy': ?pulumi.Input.mapOptionalInputValue<DefinitionEligibleAuthorizationJustInTimeAccessPolicy, Map<String, dynamic>>(justInTimeAccessPolicy, (value) => value.toMap()),
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory DefinitionEligibleAuthorization.fromMap(Map<String, dynamic> map) {
    return DefinitionEligibleAuthorization(
      justInTimeAccessPolicy: (() { final guardedValue = map['justInTimeAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefinitionEligibleAuthorizationJustInTimeAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      principalDisplayName: (() { final guardedValue = map['principalDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

