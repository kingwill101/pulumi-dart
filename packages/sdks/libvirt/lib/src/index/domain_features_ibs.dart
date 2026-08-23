// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesIbs {
  /// Sets the value for the Instruction Based Sampling feature's configuration.
  final pulumi.Input<String> value;

  /// Creates a new [DomainFeaturesIbs].
  /// [value] Sets the value for the Instruction Based Sampling feature's configuration.
  const DomainFeaturesIbs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesIbs.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesIbs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
