// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfig {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConsumptionMeteringConfig].
  /// [enabled] Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  ConsumptionMeteringConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConsumptionMeteringConfig.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

