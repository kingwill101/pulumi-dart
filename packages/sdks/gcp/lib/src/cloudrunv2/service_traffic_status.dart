// ignore_for_file: unused_element, unnecessary_cast


class ServiceTrafficStatus {
  /// (Output)
  /// Specifies percent of the traffic to this Revision.
  final int? percent;
  /// (Output)
  /// Revision to which this traffic is sent.
  final String? revision;
  /// (Output)
  /// Indicates the string used in the URI to exclusively reference this target.
  final String? tag;
  /// (Output)
  /// The allocation type for this traffic target.
  final String? type;
  /// (Output)
  /// Displays the target URI.
  final String? uri;

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
      percent: map['percent'] == null ? null : map['percent'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

