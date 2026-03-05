// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOptimizedAutoScale {
  /// The maximum number of allowed instances. Possible values range between `0` and `1000`.
  final pulumi.Input<int> maximumInstances;
  /// The minimum number of allowed instances. Possible values range between `0` and `1000`.
  final pulumi.Input<int> minimumInstances;

  /// Creates a new [ClusterOptimizedAutoScale].
  /// [maximumInstances] The maximum number of allowed instances. Possible values range between `0` and `1000`.
  /// [minimumInstances] The minimum number of allowed instances. Possible values range between `0` and `1000`.
  ClusterOptimizedAutoScale({
    required this.maximumInstances,
    required this.minimumInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumInstances': maximumInstances,
      'minimumInstances': minimumInstances,
    };
  }

  factory ClusterOptimizedAutoScale.fromMap(Map<String, dynamic> map) {
    return ClusterOptimizedAutoScale(
      maximumInstances: pulumi.Input.fromValue(map['maximumInstances'] as int),
      minimumInstances: pulumi.Input.fromValue(map['minimumInstances'] as int),
    );
  }
}

