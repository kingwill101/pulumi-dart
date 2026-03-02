// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_predefined_source.dart';

/// Defines sources for the suggest/search APIs.
class Source {
  /// Source name for content indexed by the Indexing API.
  final pulumi.Input<String>? name;
  /// Predefined content source for Google Apps.
  final pulumi.Input<SourcePredefinedSource>? predefinedSource;

  /// Creates a new [Source].
  /// [name] Source name for content indexed by the Indexing API.
  /// [predefinedSource] Predefined content source for Google Apps.
  Source({
    this.name,
    this.predefinedSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'predefinedSource': ?pulumi.Input.mapOptionalInputValue<SourcePredefinedSource, String>(predefinedSource, (value) => value.value),
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      predefinedSource: map['predefinedSource'] == null ? null : (SourcePredefinedSource.fromValue(map['predefinedSource']! as String)).input(),
    );
  }
}

