// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines renewal, billing, and transfer settings for a `Registration`.
class ManagementSettingsResponseDomainsV1beta1 {
  /// Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, it will be treated as if it were set to `AUTOMATIC_RENEWAL`. Can't be set to `RENEWAL_DISABLED` during resource creation and can only be updated when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  final pulumi.Input<String> preferredRenewalMethod;
  /// The actual renewal method for this `Registration`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be equal to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  final pulumi.Input<String> renewalMethod;
  /// Controls whether the domain can be transferred to another registrar.
  final pulumi.Input<String> transferLockState;

  /// Creates a new [ManagementSettingsResponseDomainsV1beta1].
  /// [preferredRenewalMethod] Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, it will be treated as if it were set to `AUTOMATIC_RENEWAL`. Can't be set to `RENEWAL_DISABLED` during resource creation and can only be updated when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  /// [renewalMethod] The actual renewal method for this `Registration`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL` the actual `renewal_method` can be equal to `RENEWAL_DISABLED` in case of e.g. problems with the Billing Account or reported domain abuse. In such cases check the `issues` field on the `Registration`. After the problem is resolved the `renewal_method` will be automatically updated to `preferred_renewal_method` in a few hours.
  /// [transferLockState] Controls whether the domain can be transferred to another registrar.
  ManagementSettingsResponseDomainsV1beta1({
    required this.preferredRenewalMethod,
    required this.renewalMethod,
    required this.transferLockState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRenewalMethod': preferredRenewalMethod,
      'renewalMethod': renewalMethod,
      'transferLockState': transferLockState,
    };
  }

  factory ManagementSettingsResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ManagementSettingsResponseDomainsV1beta1(
      preferredRenewalMethod: (map['preferredRenewalMethod'] as String).input(),
      renewalMethod: (map['renewalMethod'] as String).input(),
      transferLockState: (map['transferLockState'] as String).input(),
    );
  }
}

