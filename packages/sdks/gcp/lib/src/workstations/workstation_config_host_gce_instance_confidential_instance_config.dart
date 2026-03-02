// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigHostGceInstanceConfidentialInstanceConfig {
  /// Whether the instance has confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [WorkstationConfigHostGceInstanceConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Whether the instance has confidential compute enabled.
  WorkstationConfigHostGceInstanceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory WorkstationConfigHostGceInstanceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

