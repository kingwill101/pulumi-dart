// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the observed state of a single `TrafficTarget` entry.
class GoogleCloudRunV2TrafficTargetStatusResponse {
  /// Specifies percent of the traffic to this Revision.
  final pulumi.Input<int> percent;
  /// Revision to which this traffic is sent.
  final pulumi.Input<String> revision;
  /// Indicates the string used in the URI to exclusively reference this target.
  final pulumi.Input<String> tag;
  /// The allocation type for this traffic target.
  final pulumi.Input<String> type;
  /// Displays the target URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudRunV2TrafficTargetStatusResponse].
  /// [percent] Specifies percent of the traffic to this Revision.
  /// [revision] Revision to which this traffic is sent.
  /// [tag] Indicates the string used in the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  /// [uri] Displays the target URI.
  GoogleCloudRunV2TrafficTargetStatusResponse({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'revision': revision,
      'tag': tag,
      'type': type,
      'uri': uri,
    };
  }

  factory GoogleCloudRunV2TrafficTargetStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TrafficTargetStatusResponse(
      percent: pulumi.Input.fromValue(map['percent'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

