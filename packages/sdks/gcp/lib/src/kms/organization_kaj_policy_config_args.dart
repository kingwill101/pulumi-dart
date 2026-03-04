// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_kaj_policy_config_default_key_access_justification_policy.dart';

/// {@template pulumi_kms_organization_kaj_policy_config_organization_kaj_policy_config_args_doc}
/// The set of arguments for OrganizationKajPolicyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_organization_kaj_policy_config_organization_kaj_policy_config_args_doc}
class OrganizationKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<
    OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy
  >?
  defaultKeyAccessJustificationPolicy;

  /// The organization number for which to retrieve config.
  final pulumi.Input<String> organization;

  /// Creates a new [OrganizationKajPolicyConfigArgs].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [organization] The organization number for which to retrieve config.
  OrganizationKajPolicyConfigArgs({
    this.defaultKeyAccessJustificationPolicy,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeyAccessJustificationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy,
            Map<String, dynamic>
          >(defaultKeyAccessJustificationPolicy, (value) => value.toMap()),
      'organization': organization,
    };
  }

  factory OrganizationKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy: (() {
        final guardedValue = map['defaultKeyAccessJustificationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
    );
  }
}
