// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LiteTopicPartitionConfigCapacity {
  /// Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  final pulumi.Input<int> publishMibPerSec;
  /// Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  final pulumi.Input<int> subscribeMibPerSec;

  /// Creates a new [LiteTopicPartitionConfigCapacity].
  /// [publishMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  /// [subscribeMibPerSec] Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  const LiteTopicPartitionConfigCapacity({
    required this.publishMibPerSec,
    required this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMibPerSec': publishMibPerSec,
      'subscribeMibPerSec': subscribeMibPerSec,
    };
  }

  factory LiteTopicPartitionConfigCapacity.fromMap(Map<String, dynamic> map) {
    return LiteTopicPartitionConfigCapacity(
      publishMibPerSec: pulumi.Input.fromValue(map['publishMibPerSec'] as int),
      subscribeMibPerSec: pulumi.Input.fromValue(map['subscribeMibPerSec'] as int),
    );
  }
}
