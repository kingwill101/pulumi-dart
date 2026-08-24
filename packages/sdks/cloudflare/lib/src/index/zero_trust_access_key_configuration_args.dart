// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_access_key_configuration_zero_trust_access_key_configuration_args_doc}
/// The set of arguments for ZeroTrustAccessKeyConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_key_configuration_zero_trust_access_key_configuration_args_doc}
class ZeroTrustAccessKeyConfigurationArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The number of days between key rotations.
  final pulumi.Input<double> keyRotationIntervalDays;

  /// Creates a new [ZeroTrustAccessKeyConfigurationArgs].
  /// [accountId] Identifier.
  /// [keyRotationIntervalDays] The number of days between key rotations.
  const ZeroTrustAccessKeyConfigurationArgs({
    required this.accountId,
    required this.keyRotationIntervalDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyRotationIntervalDays': keyRotationIntervalDays,
    };
  }

  factory ZeroTrustAccessKeyConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessKeyConfigurationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyRotationIntervalDays: pulumi.Input.fromValue((map['keyRotationIntervalDays'] as num).toDouble()),
    );
  }
}
