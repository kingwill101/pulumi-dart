// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KafkaClusterComputeIsolation {
  /// This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  final pulumi.Input<bool>? computeIsolationEnabled;
  /// The name of the host SKU.
  final pulumi.Input<String>? hostSku;

  /// Creates a new [KafkaClusterComputeIsolation].
  /// [computeIsolationEnabled] This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  /// [hostSku] The name of the host SKU.
  KafkaClusterComputeIsolation({
    this.computeIsolationEnabled,
    this.hostSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIsolationEnabled': ?computeIsolationEnabled,
      'hostSku': ?hostSku,
    };
  }

  factory KafkaClusterComputeIsolation.fromMap(Map<String, dynamic> map) {
    return KafkaClusterComputeIsolation(
      computeIsolationEnabled: map['computeIsolationEnabled'] == null ? null : (map['computeIsolationEnabled']! as bool).input(),
      hostSku: map['hostSku'] == null ? null : (map['hostSku']! as String).input(),
    );
  }
}

