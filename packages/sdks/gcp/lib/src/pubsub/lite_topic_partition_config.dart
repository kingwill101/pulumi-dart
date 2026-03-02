// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_topic_partition_config_capacity.dart';

class LiteTopicPartitionConfig {
  /// The capacity configuration.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicPartitionConfigCapacity>? capacity;
  /// The number of partitions in the topic. Must be at least 1.
  final pulumi.Input<int> count;

  /// Creates a new [LiteTopicPartitionConfig].
  /// [capacity] The capacity configuration.
  /// [count] The number of partitions in the topic. Must be at least 1.
  LiteTopicPartitionConfig({
    this.capacity,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<LiteTopicPartitionConfigCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'count': count,
    };
  }

  factory LiteTopicPartitionConfig.fromMap(Map<String, dynamic> map) {
    return LiteTopicPartitionConfig(
      capacity: map['capacity'] == null ? null : (LiteTopicPartitionConfigCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      count: (map['count'] as int).input(),
    );
  }
}

