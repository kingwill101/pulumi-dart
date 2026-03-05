// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LiteTopicRetentionConfig {
  /// The provisioned storage, in bytes, per partition. If the number of bytes stored
  /// in any of the topic's partitions grows beyond this value, older messages will be
  /// dropped to make room for newer ones, regardless of the value of period.
  final pulumi.Input<String> perPartitionBytes;
  /// How long a published message is retained. If unset, messages will be retained as
  /// long as the bytes retained for each partition is below perPartitionBytes. A
  /// duration in seconds with up to nine fractional digits, terminated by 's'.
  /// Example: "3.5s".
  final pulumi.Input<String>? period;

  /// Creates a new [LiteTopicRetentionConfig].
  /// [perPartitionBytes] The provisioned storage, in bytes, per partition. If the number of bytes stored
  /// [period] How long a published message is retained. If unset, messages will be retained as
  LiteTopicRetentionConfig({
    required this.perPartitionBytes,
    this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perPartitionBytes': perPartitionBytes,
      'period': ?period,
    };
  }

  factory LiteTopicRetentionConfig.fromMap(Map<String, dynamic> map) {
    return LiteTopicRetentionConfig(
      perPartitionBytes: pulumi.Input.fromValue(map['perPartitionBytes'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

