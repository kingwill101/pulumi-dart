// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_instance_config_confidential_instance_type.dart';

/// A set of Confidential Instance options.
class ConfidentialInstanceConfig {
  /// Defines the type of technology used by the confidential instance.
  final pulumi.Input<ConfidentialInstanceConfigConfidentialInstanceType>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigConfidentialInstanceType, String>(confidentialInstanceType, (value) => value.value),
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : (ConfidentialInstanceConfigConfidentialInstanceType.fromValue(map['confidentialInstanceType'] as String)).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

