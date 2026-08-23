// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The canary region configuration.
class CustomRolloutSpecificationCanary {
  final pulumi.Input<List<String>>? regions;

  /// Creates a new [CustomRolloutSpecificationCanary].
  /// [regions] Optional.
  const CustomRolloutSpecificationCanary({
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
    };
  }

  factory CustomRolloutSpecificationCanary.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationCanary(
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
