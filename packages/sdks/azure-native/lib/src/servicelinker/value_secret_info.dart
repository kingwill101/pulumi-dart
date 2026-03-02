// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret info when type is rawValue. It's for scenarios that user input the secret.
class ValueSecretInfo {
  /// The secret type.
  /// Expected value is 'rawValue'.
  final pulumi.Input<String> secretType;
  /// The actual value of the secret.
  final pulumi.Input<String>? value;

  /// Creates a new [ValueSecretInfo].
  /// [secretType] The secret type.
  /// [value] The actual value of the secret.
  ValueSecretInfo({
    required this.secretType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretType': secretType,
      'value': ?value,
    };
  }

  factory ValueSecretInfo.fromMap(Map<String, dynamic> map) {
    return ValueSecretInfo(
      secretType: (map['secretType'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

