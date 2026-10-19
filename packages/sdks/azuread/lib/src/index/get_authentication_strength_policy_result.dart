// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authentication_strength_policy_combination_configuration.dart';

/// Result data returned by getAuthenticationStrengthPolicy.
class GetAuthenticationStrengthPolicyResult {
  /// A list of allowed authentication methods combinations for this authentication strength policy.
  final List<String>? allowedCombinations;
  /// A list of `combinationConfigurations` blocks as documented below, which further constrain the allowed combinations for this policy.
  final List<GetAuthenticationStrengthPolicyCombinationConfiguration>? combinationConfigurations;
  /// The description of this authentication strength policy.
  final String? description;
  /// The display name of this authentication strength policy.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The object ID of this combination configuration.
  final String? objectId;

  /// Creates a new [GetAuthenticationStrengthPolicyResult].
  /// [allowedCombinations] A list of allowed authentication methods combinations for this authentication strength policy.
  /// [combinationConfigurations] A list of `combinationConfigurations` blocks as documented below, which further constrain the allowed combinations for this policy.
  /// [description] The description of this authentication strength policy.
  /// [displayName] The display name of this authentication strength policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] The object ID of this combination configuration.
  const GetAuthenticationStrengthPolicyResult({
    this.allowedCombinations,
    this.combinationConfigurations,
    this.description,
    this.displayName,
    this.id,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCombinations': ?allowedCombinations,
      'combinationConfigurations': ?(() { final guardedValue = combinationConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthenticationStrengthPolicyCombinationConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'objectId': ?objectId,
    };
  }

  factory GetAuthenticationStrengthPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationStrengthPolicyResult(
      allowedCombinations: (() { final guardedValue = map['allowedCombinations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      combinationConfigurations: (() { final guardedValue = map['combinationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthenticationStrengthPolicyCombinationConfiguration>(guardedValue, (value) => GetAuthenticationStrengthPolicyCombinationConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
