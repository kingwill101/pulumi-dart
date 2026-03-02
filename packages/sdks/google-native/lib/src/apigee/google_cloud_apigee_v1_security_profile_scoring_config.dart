// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security configurations to manage scoring.
class GoogleCloudApigeeV1SecurityProfileScoringConfig {
  /// Description of the config.
  final pulumi.Input<String>? description;
  /// Path of the component config used for scoring.
  final pulumi.Input<String>? scorePath;
  /// Title of the config.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudApigeeV1SecurityProfileScoringConfig].
  /// [description] Description of the config.
  /// [scorePath] Path of the component config used for scoring.
  /// [title] Title of the config.
  GoogleCloudApigeeV1SecurityProfileScoringConfig({
    this.description,
    this.scorePath,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'scorePath': ?scorePath,
      'title': ?title,
    };
  }

  factory GoogleCloudApigeeV1SecurityProfileScoringConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityProfileScoringConfig(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      scorePath: map['scorePath'] == null ? null : (map['scorePath'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

