// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_spec_cron_spec.dart';

class BackupScheduleSpec {
  /// Cron style schedule specification..
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleSpecCronSpec>? cronSpec;

  /// Creates a new [BackupScheduleSpec].
  /// [cronSpec] Cron style schedule specification..
  const BackupScheduleSpec({
    this.cronSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSpec': ?pulumi.Input.mapOptionalInputValue<BackupScheduleSpecCronSpec, Map<String, dynamic>>(cronSpec, (value) => value.toMap()),
    };
  }

  factory BackupScheduleSpec.fromMap(Map<String, dynamic> map) {
    return BackupScheduleSpec(
      cronSpec: (() { final guardedValue = map['cronSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupScheduleSpecCronSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
