// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_kaj_policy_config_default_key_access_justification_policy.dart';

/// Input properties used for looking up and filtering OrganizationKajPolicyConfig resources.
class OrganizationKajPolicyConfigState {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy>? defaultKeyAccessJustificationPolicy;
  /// The organization number for which to retrieve config.
  final pulumi.Input<String>? organization;

  /// Creates a new [OrganizationKajPolicyConfigState].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [organization] The organization number for which to retrieve config.
  OrganizationKajPolicyConfigState({
    this.defaultKeyAccessJustificationPolicy,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeyAccessJustificationPolicy': ?pulumi.Input.mapOptionalInputValue<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy, Map<String, dynamic>>(defaultKeyAccessJustificationPolicy, (value) => value.toMap()),
      'organization': ?organization,
    };
  }

  factory OrganizationKajPolicyConfigState.fromMap(Map<String, dynamic> map) {
    return OrganizationKajPolicyConfigState(
      defaultKeyAccessJustificationPolicy: map['defaultKeyAccessJustificationPolicy'] == null ? null : (OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((map['defaultKeyAccessJustificationPolicy'] as Map).cast<String, dynamic>())).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
    );
  }
}

