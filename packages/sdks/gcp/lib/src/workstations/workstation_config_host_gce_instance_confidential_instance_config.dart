// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigHostGceInstanceConfidentialInstanceConfig {
  /// Whether the instance has confidential compute enabled.
  final pulumi.Input<bool?>? enableConfidentialCompute;

  /// Creates a new [WorkstationConfigHostGceInstanceConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Whether the instance has confidential compute enabled.
  const WorkstationConfigHostGceInstanceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory WorkstationConfigHostGceInstanceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceConfidentialInstanceConfig(
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
