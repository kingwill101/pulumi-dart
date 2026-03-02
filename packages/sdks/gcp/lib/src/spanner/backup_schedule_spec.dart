// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_spec_cron_spec.dart';

class BackupScheduleSpec {
  /// Cron style schedule specification..
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleSpecCronSpec>? cronSpec;

  /// Creates a new [BackupScheduleSpec].
  /// [cronSpec] Cron style schedule specification..
  BackupScheduleSpec({
    this.cronSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSpec': ?pulumi.Input.mapOptionalInputValue<BackupScheduleSpecCronSpec, Map<String, dynamic>>(cronSpec, (value) => value.toMap()),
    };
  }

  factory BackupScheduleSpec.fromMap(Map<String, dynamic> map) {
    return BackupScheduleSpec(
      cronSpec: map['cronSpec'] == null ? null : (BackupScheduleSpecCronSpec.fromMap((map['cronSpec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

