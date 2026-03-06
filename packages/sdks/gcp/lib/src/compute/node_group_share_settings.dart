// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_share_settings_project_map.dart';

class NodeGroupShareSettings {
  /// A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final pulumi.Input<List<NodeGroupShareSettingsProjectMap>>? projectMaps;
  /// Node group sharing type.
  /// Possible values are: `ORGANIZATION`, `SPECIFIC_PROJECTS`, `LOCAL`.
  final pulumi.Input<String> shareType;

  /// Creates a new [NodeGroupShareSettings].
  /// [projectMaps] A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [shareType] Node group sharing type.
  const NodeGroupShareSettings({
    this.projectMaps,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMaps': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupShareSettingsProjectMap>, List<Map<String, dynamic>>>(projectMaps, (value) => pulumi.Input.encodeList<NodeGroupShareSettingsProjectMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareType': shareType,
    };
  }

  factory NodeGroupShareSettings.fromMap(Map<String, dynamic> map) {
    return NodeGroupShareSettings(
      projectMaps: (() { final guardedValue = map['projectMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupShareSettingsProjectMap>(guardedValue, (value) => NodeGroupShareSettingsProjectMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
    );
  }
}

