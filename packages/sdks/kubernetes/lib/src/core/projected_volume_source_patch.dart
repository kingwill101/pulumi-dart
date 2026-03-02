// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_projection_patch.dart';

/// Represents a projected volume source
class ProjectedVolumeSourcePatch {
  /// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int>? defaultMode;
  /// sources is the list of volume projections. Each entry in this list handles one source.
  final pulumi.Input<List<VolumeProjectionPatch>>? sources;

  /// Creates a new [ProjectedVolumeSourcePatch].
  /// [defaultMode] defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [sources] sources is the list of volume projections. Each entry in this list handles one source.
  ProjectedVolumeSourcePatch({
    this.defaultMode,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<VolumeProjectionPatch>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<VolumeProjectionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectedVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return ProjectedVolumeSourcePatch(
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode'] as int).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<VolumeProjectionPatch>(map['sources'], (value) => VolumeProjectionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

