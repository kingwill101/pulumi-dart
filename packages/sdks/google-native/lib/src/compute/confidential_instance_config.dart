// ignore_for_file: unused_element, unnecessary_cast

import 'confidential_instance_config_confidential_instance_type.dart';

/// A set of Confidential Instance options.
class ConfidentialInstanceConfig {
  /// Defines the type of technology used by the confidential instance.
  final ConfidentialInstanceConfigConfidentialInstanceType? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType == null ? null : confidentialInstanceType!.value,
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : ConfidentialInstanceConfigConfidentialInstanceType.fromValue(map['confidentialInstanceType'] as String),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : map['enableConfidentialCompute'] as bool,
    );
  }
}

