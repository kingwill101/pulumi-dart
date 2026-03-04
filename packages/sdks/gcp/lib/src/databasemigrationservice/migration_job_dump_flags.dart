// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_dump_flags_dump_flag.dart';

class MigrationJobDumpFlags {
  /// A list of dump flags
  /// Structure is documented below.
  final pulumi.Input<List<MigrationJobDumpFlagsDumpFlag>>? dumpFlags;

  /// Creates a new [MigrationJobDumpFlags].
  /// [dumpFlags] A list of dump flags
  MigrationJobDumpFlags({this.dumpFlags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpFlags':
          ?pulumi.Input.mapOptionalInputValue<
            List<MigrationJobDumpFlagsDumpFlag>,
            List<Map<String, dynamic>>
          >(
            dumpFlags,
            (value) =>
                pulumi.Input.encodeList<
                  MigrationJobDumpFlagsDumpFlag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MigrationJobDumpFlags.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlags(
      dumpFlags: (() {
        final guardedValue = map['dumpFlags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MigrationJobDumpFlagsDumpFlag>(
            guardedValue,
            (value) => MigrationJobDumpFlagsDumpFlag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
