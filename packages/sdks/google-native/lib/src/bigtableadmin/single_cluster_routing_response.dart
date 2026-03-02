// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Unconditionally routes all read/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.
class SingleClusterRoutingResponse {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  final pulumi.Input<bool> allowTransactionalWrites;
  /// The cluster to which read/write requests should be routed.
  final pulumi.Input<String> clusterId;

  /// Creates a new [SingleClusterRoutingResponse].
  /// [allowTransactionalWrites] Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  /// [clusterId] The cluster to which read/write requests should be routed.
  SingleClusterRoutingResponse({
    required this.allowTransactionalWrites,
    required this.clusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTransactionalWrites': allowTransactionalWrites,
      'clusterId': clusterId,
    };
  }

  factory SingleClusterRoutingResponse.fromMap(Map<String, dynamic> map) {
    return SingleClusterRoutingResponse(
      allowTransactionalWrites: (map['allowTransactionalWrites'] as bool).input(),
      clusterId: (map['clusterId'] as String).input(),
    );
  }
}

