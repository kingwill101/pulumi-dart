// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dump_flag_response.dart';

/// Dump flags definition.
class DumpFlagsResponse {
  /// The flags for the initial dump.
  final pulumi.Input<List<DumpFlagResponse>> dumpFlags;

  /// Creates a new [DumpFlagsResponse].
  /// [dumpFlags] The flags for the initial dump.
  const DumpFlagsResponse({
    required this.dumpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpFlags': pulumi.Input.mapInputValue<List<DumpFlagResponse>, List<Map<String, dynamic>>>(dumpFlags, (value) => pulumi.Input.encodeList<DumpFlagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DumpFlagsResponse.fromMap(Map<String, dynamic> map) {
    return DumpFlagsResponse(
      dumpFlags: pulumi.Input.fromValue(pulumi.Input.decodeList<DumpFlagResponse>(map['dumpFlags']!, (value) => DumpFlagResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

