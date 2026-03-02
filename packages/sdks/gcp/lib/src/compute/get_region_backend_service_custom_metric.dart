// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final pulumi.Input<bool> dryRun;
  /// The name of the regional backend service.
  final pulumi.Input<String> name;

  /// Creates a new [GetRegionBackendServiceCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [name] The name of the regional backend service.
  GetRegionBackendServiceCustomMetric({
    required this.dryRun,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': dryRun,
      'name': name,
    };
  }

  factory GetRegionBackendServiceCustomMetric.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceCustomMetric(
      dryRun: (map['dryRun'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

