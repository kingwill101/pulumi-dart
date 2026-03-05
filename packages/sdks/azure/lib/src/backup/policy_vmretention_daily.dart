// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMRetentionDaily {
  /// The number of daily backups to keep. Must be between `7` and `9999`.
  ///
  /// &gt; **Note:** Azure previously allows this field to be set to a minimum of 1 (day) - but for new resources/to update this value on existing Backup Policies - this value must now be at least 7 (days).
  final pulumi.Input<int> count;

  /// Creates a new [PolicyVMRetentionDaily].
  /// [count] The number of daily backups to keep. Must be between `7` and `9999`.
  PolicyVMRetentionDaily({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyVMRetentionDaily.fromMap(Map<String, dynamic> map) {
    return PolicyVMRetentionDaily(
      count: pulumi.Input.fromValue(map['count'] as int),
    );
  }
}

