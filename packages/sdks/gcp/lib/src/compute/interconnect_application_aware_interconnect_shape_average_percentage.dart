// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectApplicationAwareInterconnectShapeAveragePercentage {
  /// Bandwidth percentage for a specific traffic class.
  final pulumi.Input<int>? percentage;
  /// Enum representing the various traffic classes offered by AAI.
  /// Default value is `TC_UNSPECIFIED`.
  /// Possible values are: `TC_UNSPECIFIED`, `TC1`, `TC2`, `TC3`, `TC4`, `TC5`, `TC6`.
  final pulumi.Input<String>? trafficClass;

  /// Creates a new [InterconnectApplicationAwareInterconnectShapeAveragePercentage].
  /// [percentage] Bandwidth percentage for a specific traffic class.
  /// [trafficClass] Enum representing the various traffic classes offered by AAI.
  const InterconnectApplicationAwareInterconnectShapeAveragePercentage({
    this.percentage,
    this.trafficClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
      'trafficClass': ?trafficClass,
    };
  }

  factory InterconnectApplicationAwareInterconnectShapeAveragePercentage.fromMap(Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnectShapeAveragePercentage(
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trafficClass: (() { final guardedValue = map['trafficClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

