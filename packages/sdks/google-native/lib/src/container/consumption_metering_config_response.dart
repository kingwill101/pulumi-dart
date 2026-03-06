// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigResponse {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConsumptionMeteringConfigResponse].
  /// [enabled] Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  const ConsumptionMeteringConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConsumptionMeteringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

