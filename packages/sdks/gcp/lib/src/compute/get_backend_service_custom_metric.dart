// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final pulumi.Input<bool> dryRun;

  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendServiceCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [name] The name of the Backend Service.
  GetBackendServiceCustomMetric({required this.dryRun, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dryRun': dryRun, 'name': name};
  }

  factory GetBackendServiceCustomMetric.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCustomMetric(
      dryRun: pulumi.Input.fromValue(map['dryRun'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
