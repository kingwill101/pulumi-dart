// ignore_for_file: unused_element, unnecessary_cast


class SparkClusterComputeIsolation {
  /// This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  final bool? computeIsolationEnabled;
  /// The name of the host SKU.
  final String? hostSku;

  /// Creates a new [SparkClusterComputeIsolation].
  /// [computeIsolationEnabled] This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  /// [hostSku] The name of the host SKU.
  SparkClusterComputeIsolation({
    this.computeIsolationEnabled,
    this.hostSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIsolationEnabled': ?computeIsolationEnabled,
      'hostSku': ?hostSku,
    };
  }

  factory SparkClusterComputeIsolation.fromMap(Map<String, dynamic> map) {
    return SparkClusterComputeIsolation(
      computeIsolationEnabled: map['computeIsolationEnabled'] == null ? null : map['computeIsolationEnabled'] as bool,
      hostSku: map['hostSku'] == null ? null : map['hostSku'] as String,
    );
  }
}

