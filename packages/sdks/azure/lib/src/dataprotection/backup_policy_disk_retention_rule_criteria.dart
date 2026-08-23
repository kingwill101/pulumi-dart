// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyDiskRetentionRuleCriteria {
  /// Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String>? absoluteCriteria;

  /// Creates a new [BackupPolicyDiskRetentionRuleCriteria].
  /// [absoluteCriteria] Possible values are `AllBackup`, `FirstOfDay`, `FirstOfWeek`, `FirstOfMonth` and `FirstOfYear`. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy Disk to be created.
  const BackupPolicyDiskRetentionRuleCriteria({
    this.absoluteCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteCriteria': ?absoluteCriteria,
    };
  }

  factory BackupPolicyDiskRetentionRuleCriteria.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDiskRetentionRuleCriteria(
      absoluteCriteria: (() { final guardedValue = map['absoluteCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
