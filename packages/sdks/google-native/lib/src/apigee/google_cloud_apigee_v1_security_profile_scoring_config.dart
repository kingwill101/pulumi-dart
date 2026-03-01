// ignore_for_file: unused_element, unnecessary_cast


/// Security configurations to manage scoring.
class GoogleCloudApigeeV1SecurityProfileScoringConfig {
  /// Description of the config.
  final String? description;
  /// Path of the component config used for scoring.
  final String? scorePath;
  /// Title of the config.
  final String? title;

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
      description: map['description'] == null ? null : map['description'] as String,
      scorePath: map['scorePath'] == null ? null : map['scorePath'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

