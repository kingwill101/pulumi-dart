// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'downward_apivolume_file.dart';

/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
class DownwardAPIVolumeSource {
  /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int>? defaultMode;
  /// Items is a list of downward API volume file
  final pulumi.Input<List<DownwardAPIVolumeFile>>? items;

  /// Creates a new [DownwardAPIVolumeSource].
  /// [defaultMode] Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [items] Items is a list of downward API volume file
  DownwardAPIVolumeSource({
    this.defaultMode,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'items': ?pulumi.Input.mapOptionalInputValue<List<DownwardAPIVolumeFile>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<DownwardAPIVolumeFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DownwardAPIVolumeSource.fromMap(Map<String, dynamic> map) {
    return DownwardAPIVolumeSource(
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode'] as int).input(),
      items: map['items'] == null ? null : (pulumi.Input.decodeList<DownwardAPIVolumeFile>(map['items'], (value) => DownwardAPIVolumeFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

