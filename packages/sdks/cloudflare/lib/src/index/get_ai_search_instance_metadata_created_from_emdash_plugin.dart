// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceMetadataCreatedFromEmdashPlugin {
  /// Available values: "native", "rest".
  final pulumi.Input<String> type;
  final pulumi.Input<String> version;

  /// Creates a new [GetAiSearchInstanceMetadataCreatedFromEmdashPlugin].
  /// [type] Available values: "native", "rest".
  /// [version] Required.
  const GetAiSearchInstanceMetadataCreatedFromEmdashPlugin({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory GetAiSearchInstanceMetadataCreatedFromEmdashPlugin.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceMetadataCreatedFromEmdashPlugin(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
