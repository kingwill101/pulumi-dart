// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceMetadataCreatedFromEmdashPlugin {
  /// Available values: "native", "rest".
  final pulumi.Input<String> type;
  final pulumi.Input<String> version;

  /// Creates a new [AiSearchInstanceMetadataCreatedFromEmdashPlugin].
  /// [type] Available values: "native", "rest".
  /// [version] Required.
  const AiSearchInstanceMetadataCreatedFromEmdashPlugin({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory AiSearchInstanceMetadataCreatedFromEmdashPlugin.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceMetadataCreatedFromEmdashPlugin(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
