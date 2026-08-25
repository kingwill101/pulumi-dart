// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTrafficStatus {
  /// (Output)
  /// Specifies percent of the traffic to this Revision.
  final pulumi.Input<int?>? percent;
  /// (Output)
  /// Revision to which this traffic is sent.
  final pulumi.Input<String?>? revision;
  /// (Output)
  /// Indicates the string used in the URI to exclusively reference this target.
  final pulumi.Input<String?>? tag;
  /// (Output)
  /// The allocation type for this traffic target.
  final pulumi.Input<String?>? type;
  /// (Output)
  /// Displays the target URI.
  final pulumi.Input<String?>? uri;

  /// Creates a new [ServiceTrafficStatus].
  /// [percent] (Output)
  /// [revision] (Output)
  /// [tag] (Output)
  /// [type] (Output)
  /// [uri] (Output)
  const ServiceTrafficStatus({
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
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
