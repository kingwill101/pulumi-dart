// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationFeatureTimewindowFilter {
  /// The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  final pulumi.Input<String>? end;
  /// The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  final pulumi.Input<String>? start;

  /// Creates a new [ConfigurationFeatureTimewindowFilter].
  /// [end] The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  /// [start] The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
  const ConfigurationFeatureTimewindowFilter({
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
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

