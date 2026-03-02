// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTrafficStatus {
  /// (Output)
  /// Specifies percent of the traffic to this Revision.
  final pulumi.Input<int>? percent;
  /// (Output)
  /// Revision to which this traffic is sent.
  final pulumi.Input<String>? revision;
  /// (Output)
  /// Indicates the string used in the URI to exclusively reference this target.
  final pulumi.Input<String>? tag;
  /// (Output)
  /// The allocation type for this traffic target.
  final pulumi.Input<String>? type;
  /// (Output)
  /// Displays the target URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [ServiceTrafficStatus].
  /// [percent] (Output)
  /// [revision] (Output)
  /// [tag] (Output)
  /// [type] (Output)
  /// [uri] (Output)
  ServiceTrafficStatus({
    this.percent,
    this.revision,
    this.tag,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'tag': ?tag,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory ServiceTrafficStatus.fromMap(Map<String, dynamic> map) {
    return ServiceTrafficStatus(
      percent: map['percent'] == null ? null : (map['percent']! as int).input(),
      revision: map['revision'] == null ? null : (map['revision']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

