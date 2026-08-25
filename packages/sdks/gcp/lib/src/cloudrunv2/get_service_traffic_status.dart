// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTrafficStatus {
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

  /// Creates a new [GetServiceTrafficStatus].
  /// [percent] Specifies percent of the traffic to this Revision.
  /// [revision] Revision to which this traffic is sent.
  /// [tag] Indicates the string used in the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  /// [uri] Displays the target URI.
  const GetServiceTrafficStatus({
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

  factory GetServiceTrafficStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceTrafficStatus(
      percent: pulumi.Input.fromValue((map['percent'] as num).toInt()),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
