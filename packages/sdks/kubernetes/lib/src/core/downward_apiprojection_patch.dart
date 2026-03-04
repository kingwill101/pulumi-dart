// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'downward_apivolume_file_patch.dart';

/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
class DownwardAPIProjectionPatch {
  /// Items is a list of DownwardAPIVolume file
  final pulumi.Input<List<DownwardAPIVolumeFilePatch>>? items;

  /// Creates a new [DownwardAPIProjectionPatch].
  /// [items] Items is a list of DownwardAPIVolume file
  DownwardAPIProjectionPatch({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  factory DownwardAPIProjectionPatch.fromMap(Map<String, dynamic> map) {
    return DownwardAPIProjectionPatch(
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
