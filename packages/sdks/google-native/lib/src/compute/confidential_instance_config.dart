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
  const ConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigConfidentialInstanceType, String>(confidentialInstanceType, (value) => value.wireValue),
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig(
      confidentialInstanceType: (() { final guardedValue = map['confidentialInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialInstanceConfigConfidentialInstanceType.fromValue(guardedValue as String)); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

