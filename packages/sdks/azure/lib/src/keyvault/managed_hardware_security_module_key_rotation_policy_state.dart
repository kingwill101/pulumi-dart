// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedHardwareSecurityModuleKeyRotationPolicy resources.
class ManagedHardwareSecurityModuleKeyRotationPolicyState {
  /// Specify the expiration duration on a newly rotated key as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `P28D`.
  final pulumi.Input<String>? expireAfter;
  /// The ID of the Managed HSM Key. Changing this forces a new Managed HSM Key rotation policy to be created.
  final pulumi.Input<String>? managedHsmKeyId;
  /// Rotate automatically at a duration after key creation as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  final pulumi.Input<String>? timeAfterCreation;
  /// Rotate automatically at a duration before key expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  final pulumi.Input<String>? timeBeforeExpiry;

  /// Creates a new [ManagedHardwareSecurityModuleKeyRotationPolicyState].
  /// [expireAfter] Specify the expiration duration on a newly rotated key as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `P28D`.
  /// [managedHsmKeyId] The ID of the Managed HSM Key. Changing this forces a new Managed HSM Key rotation policy to be created.
  /// [timeAfterCreation] Rotate automatically at a duration after key creation as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  /// [timeBeforeExpiry] Rotate automatically at a duration before key expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  ManagedHardwareSecurityModuleKeyRotationPolicyState({
    pulumi.Output<String>? expireAfter,
    pulumi.Output<String>? managedHsmKeyId,
    pulumi.Output<String>? timeAfterCreation,
    pulumi.Output<String>? timeBeforeExpiry,
  }) :
      expireAfter = pulumi.Input.asOptionalInput<String>(expireAfter),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      timeAfterCreation = pulumi.Input.asOptionalInput<String>(timeAfterCreation),
      timeBeforeExpiry = pulumi.Input.asOptionalInput<String>(timeBeforeExpiry);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireAfter': ?expireAfter,
      'managedHsmKeyId': ?managedHsmKeyId,
      'timeAfterCreation': ?timeAfterCreation,
      'timeBeforeExpiry': ?timeBeforeExpiry,
    };
  }

  factory ManagedHardwareSecurityModuleKeyRotationPolicyState.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleKeyRotationPolicyState(
      expireAfter: map['expireAfter'] == null ? null : pulumi.Output.create<String>(map['expireAfter'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      timeAfterCreation: map['timeAfterCreation'] == null ? null : pulumi.Output.create<String>(map['timeAfterCreation'] as String),
      timeBeforeExpiry: map['timeBeforeExpiry'] == null ? null : pulumi.Output.create<String>(map['timeBeforeExpiry'] as String),
    );
  }
}

