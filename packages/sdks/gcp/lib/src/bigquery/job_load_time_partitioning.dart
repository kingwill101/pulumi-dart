// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobLoadTimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value.
  final pulumi.Input<String>? expirationMs;
  /// If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the table is partitioned by this field.
  /// The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  /// A wrapper is used here because an empty string is an invalid value.
  final pulumi.Input<String>? field;
  /// The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,
  /// but in OnePlatform the field will be treated as unset.
  final pulumi.Input<String> type;

  /// Creates a new [JobLoadTimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition. A wrapper is used here because 0 is an invalid value.
  /// [field] If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the table is partitioned by this field.
  /// [type] The only type supported is DAY, which will generate one partition per day. Providing an empty string used to cause an error,
  const JobLoadTimePartitioning({
    this.expirationMs,
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'field': ?field,
      'type': type,
    };
  }

  factory JobLoadTimePartitioning.fromMap(Map<String, dynamic> map) {
    return JobLoadTimePartitioning(
      expirationMs: (() { final guardedValue = map['expirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

