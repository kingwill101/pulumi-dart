// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'downward_apivolume_file.dart';

/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
class DownwardAPIProjection {
  /// Items is a list of DownwardAPIVolume file
  final pulumi.Input<List<DownwardAPIVolumeFile>>? items;

  /// Creates a new [DownwardAPIProjection].
  /// [items] Items is a list of DownwardAPIVolume file
  DownwardAPIProjection({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<DownwardAPIVolumeFile>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<DownwardAPIVolumeFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DownwardAPIProjection.fromMap(Map<String, dynamic> map) {
    return DownwardAPIProjection(
      items: map['items'] == null ? null : (pulumi.Input.decodeList<DownwardAPIVolumeFile>(map['items'], (value) => DownwardAPIVolumeFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

