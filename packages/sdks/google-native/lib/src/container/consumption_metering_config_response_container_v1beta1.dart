// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigResponseContainerV1beta1 {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConsumptionMeteringConfigResponseContainerV1beta1].
  /// [enabled] Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  ConsumptionMeteringConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConsumptionMeteringConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfigResponseContainerV1beta1(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

