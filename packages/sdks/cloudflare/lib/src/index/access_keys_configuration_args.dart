// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_keys_configuration_access_keys_configuration_args_doc}
/// The set of arguments for AccessKeysConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_access_keys_configuration_access_keys_configuration_args_doc}
class AccessKeysConfigurationArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The number of days between key rotations.
  final pulumi.Input<double> keyRotationIntervalDays;

  /// Creates a new [AccessKeysConfigurationArgs].
  /// [accountId] Identifier.
  /// [keyRotationIntervalDays] The number of days between key rotations.
  const AccessKeysConfigurationArgs({
    required this.accountId,
    required this.keyRotationIntervalDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyRotationIntervalDays': keyRotationIntervalDays,
    };
  }

  factory AccessKeysConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AccessKeysConfigurationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyRotationIntervalDays: pulumi.Input.fromValue((map['keyRotationIntervalDays'] as num).toDouble()),
    );
  }
}
