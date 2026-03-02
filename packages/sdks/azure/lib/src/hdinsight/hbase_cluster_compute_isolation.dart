// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HBaseClusterComputeIsolation {
  /// This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  final pulumi.Input<bool>? computeIsolationEnabled;
  /// The name of the host SKU.
  final pulumi.Input<String>? hostSku;

  /// Creates a new [HBaseClusterComputeIsolation].
  /// [computeIsolationEnabled] This field indicates whether enable compute isolation or not. Possible values are `true` or `false`.
  /// [hostSku] The name of the host SKU.
  HBaseClusterComputeIsolation({
    this.computeIsolationEnabled,
    this.hostSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIsolationEnabled': ?computeIsolationEnabled,
      'hostSku': ?hostSku,
    };
  }

  factory HBaseClusterComputeIsolation.fromMap(Map<String, dynamic> map) {
    return HBaseClusterComputeIsolation(
      computeIsolationEnabled: map['computeIsolationEnabled'] == null ? null : (map['computeIsolationEnabled']! as bool).input(),
      hostSku: map['hostSku'] == null ? null : (map['hostSku']! as String).input(),
    );
  }
}

