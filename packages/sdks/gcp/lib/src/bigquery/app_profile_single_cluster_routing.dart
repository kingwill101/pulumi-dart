// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppProfileSingleClusterRouting {
  /// If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
  /// It is unsafe to send these requests to the same table/row/column in multiple clusters.
  final pulumi.Input<bool?>? allowTransactionalWrites;
  /// The cluster to which read/write requests should be routed.
  final pulumi.Input<String> clusterId;

  /// Creates a new [AppProfileSingleClusterRouting].
  /// [allowTransactionalWrites] If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
  /// [clusterId] The cluster to which read/write requests should be routed.
  const AppProfileSingleClusterRouting({
    this.allowTransactionalWrites,
    required this.clusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTransactionalWrites': ?allowTransactionalWrites,
      'clusterId': clusterId,
    };
  }

  factory AppProfileSingleClusterRouting.fromMap(Map<String, dynamic> map) {
    return AppProfileSingleClusterRouting(
      allowTransactionalWrites: (() { final guardedValue = map['allowTransactionalWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
    );
  }
}
