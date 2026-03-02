// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security configurations to manage scoring.
class GoogleCloudApigeeV1SecurityProfileScoringConfigResponse {
  /// Description of the config.
  final pulumi.Input<String> description;
  /// Path of the component config used for scoring.
  final pulumi.Input<String> scorePath;
  /// Title of the config.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudApigeeV1SecurityProfileScoringConfigResponse].
  /// [description] Description of the config.
  /// [scorePath] Path of the component config used for scoring.
  /// [title] Title of the config.
  GoogleCloudApigeeV1SecurityProfileScoringConfigResponse({
    required this.description,
    required this.scorePath,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'scorePath': scorePath,
      'title': title,
    };
  }

  factory GoogleCloudApigeeV1SecurityProfileScoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityProfileScoringConfigResponse(
      description: (map['description'] as String).input(),
      scorePath: (map['scorePath'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

