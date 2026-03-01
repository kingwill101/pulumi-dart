// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationFeatureTimewindowFilter {
  /// The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  final String? end;
  /// The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  final String? start;

  /// Creates a new [ConfigurationFeatureTimewindowFilter].
  /// [end] The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  /// [start] The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  ConfigurationFeatureTimewindowFilter({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory ConfigurationFeatureTimewindowFilter.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureTimewindowFilter(
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

