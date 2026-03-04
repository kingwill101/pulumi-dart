// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'downward_apivolume_file_patch.dart';

/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
class DownwardAPIVolumeSourcePatch {
  /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int>? defaultMode;

  /// Items is a list of downward API volume file
  final pulumi.Input<List<DownwardAPIVolumeFilePatch>>? items;

  /// Creates a new [DownwardAPIVolumeSourcePatch].
  /// [defaultMode] Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [items] Items is a list of downward API volume file
  DownwardAPIVolumeSourcePatch({this.defaultMode, this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'items':
          ?pulumi.Input.mapOptionalInputValue<
            List<DownwardAPIVolumeFilePatch>,
            List<Map<String, dynamic>>
          >(
            items,
            (value) =>
                pulumi.Input.encodeList<
                  DownwardAPIVolumeFilePatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DownwardAPIVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return DownwardAPIVolumeSourcePatch(
      defaultMode: (() {
        final guardedValue = map['defaultMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DownwardAPIVolumeFilePatch>(
            guardedValue,
            (value) => DownwardAPIVolumeFilePatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
