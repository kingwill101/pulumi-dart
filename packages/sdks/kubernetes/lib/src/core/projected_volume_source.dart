// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_projection.dart';

/// Represents a projected volume source
class ProjectedVolumeSource {
  /// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;
  /// sources is the list of volume projections. Each entry in this list handles one source.
  final List<VolumeProjection> sources;

  /// Creates a new [ProjectedVolumeSource].
  /// [defaultMode] defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [sources] sources is the list of volume projections. Each entry in this list handles one source.
  ProjectedVolumeSource({
    this.defaultMode,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'sources': pulumi.Input.encodeList<VolumeProjection, Map<String, dynamic>>(sources, (value) => value.toMap()),
    };
  }

  factory ProjectedVolumeSource.fromMap(Map<String, dynamic> map) {
    return ProjectedVolumeSource(
      defaultMode: map['defaultMode'] == null ? null : map['defaultMode'] as int,
      sources: pulumi.Input.decodeList<VolumeProjection>(map['sources'], (value) => VolumeProjection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

