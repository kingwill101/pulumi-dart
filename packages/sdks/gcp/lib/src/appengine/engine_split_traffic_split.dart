// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EngineSplitTrafficSplit {
  /// Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
  final pulumi.Input<Map<String, String>> allocations;
  /// Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.
  /// Possible values are: `UNSPECIFIED`, `COOKIE`, `IP`, `RANDOM`.
  final pulumi.Input<String>? shardBy;

  /// Creates a new [EngineSplitTrafficSplit].
  /// [allocations] Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.
  /// [shardBy] Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.
  const EngineSplitTrafficSplit({
    required this.allocations,
    this.shardBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocations': allocations,
      'shardBy': ?shardBy,
    };
  }

  factory EngineSplitTrafficSplit.fromMap(Map<String, dynamic> map) {
    return EngineSplitTrafficSplit(
      allocations: pulumi.Input.fromValue((map['allocations'] as Map).cast<String, String>()),
      shardBy: (() { final guardedValue = map['shardBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

