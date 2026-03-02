// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionMonitors {
  /// A list of ACLP alerts services supported in the region.
  final pulumi.Input<List<String>> alerts;
  /// A list of ACLP metrics services supported in the region.
  final pulumi.Input<List<String>> metrics;

  /// Creates a new [GetRegionMonitors].
  /// [alerts] A list of ACLP alerts services supported in the region.
  /// [metrics] A list of ACLP metrics services supported in the region.
  GetRegionMonitors({
    required this.alerts,
    required this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts,
      'metrics': metrics,
    };
  }

  factory GetRegionMonitors.fromMap(Map<String, dynamic> map) {
    return GetRegionMonitors(
      alerts: ((map['alerts'] as List).cast<String>()).input(),
      metrics: ((map['metrics'] as List).cast<String>()).input(),
    );
  }
}

