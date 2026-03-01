// ignore_for_file: unused_element, unnecessary_cast


/// High-level information about a Template Spec version.
class TemplateSpecVersionInfoResponse {
  /// Template Spec version description.
  final String description;
  /// The timestamp of when the version was created.
  final String timeCreated;
  /// The timestamp of when the version was last modified.
  final String timeModified;

  /// Creates a new [TemplateSpecVersionInfoResponse].
  /// [description] Template Spec version description.
  /// [timeCreated] The timestamp of when the version was created.
  /// [timeModified] The timestamp of when the version was last modified.
  TemplateSpecVersionInfoResponse({
    required this.description,
    required this.timeCreated,
    required this.timeModified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'timeCreated': timeCreated,
      'timeModified': timeModified,
    };
  }

  factory TemplateSpecVersionInfoResponse.fromMap(Map<String, dynamic> map) {
    return TemplateSpecVersionInfoResponse(
      description: map['description'] as String,
      timeCreated: map['timeCreated'] as String,
      timeModified: map['timeModified'] as String,
    );
  }
}

