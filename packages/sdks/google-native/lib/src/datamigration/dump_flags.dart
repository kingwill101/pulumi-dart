// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dump_flag.dart';

/// Dump flags definition.
class DumpFlags {
  /// The flags for the initial dump.
  final pulumi.Input<List<DumpFlag>>? dumpFlags;

  /// Creates a new [DumpFlags].
  /// [dumpFlags] The flags for the initial dump.
  DumpFlags({
    this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpFlags': ?pulumi.Input.mapOptionalInputValue<List<DumpFlag>, List<Map<String, dynamic>>>(dumpFlags, (value) => pulumi.Input.encodeList<DumpFlag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DumpFlags.fromMap(Map<String, dynamic> map) {
    return DumpFlags(
      dumpFlags: (() { final guardedValue = map['dumpFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DumpFlag>(guardedValue, (value) => DumpFlag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

