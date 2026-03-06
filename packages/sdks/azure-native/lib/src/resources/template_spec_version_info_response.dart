// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High-level information about a Template Spec version.
class TemplateSpecVersionInfoResponse {
  /// Template Spec version description.
  final pulumi.Input<String> description;
  /// The timestamp of when the version was created.
  final pulumi.Input<String> timeCreated;
  /// The timestamp of when the version was last modified.
  final pulumi.Input<String> timeModified;

  /// Creates a new [TemplateSpecVersionInfoResponse].
  /// [description] Template Spec version description.
  /// [timeCreated] The timestamp of when the version was created.
  /// [timeModified] The timestamp of when the version was last modified.
  const TemplateSpecVersionInfoResponse({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
      timeModified: pulumi.Input.fromValue(map['timeModified'] as String),
    );
  }
}

