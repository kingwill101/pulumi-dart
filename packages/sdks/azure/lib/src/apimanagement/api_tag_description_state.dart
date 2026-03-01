// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiTagDescription resources.
class ApiTagDescriptionState {
  /// The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  final pulumi.Input<String>? apiTagId;
  /// The description of the Tag.
  final pulumi.Input<String>? description;
  /// The description of the external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationDescription;
  /// The URL of external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationUrl;

  /// Creates a new [ApiTagDescriptionState].
  /// [apiTagId] The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  /// [description] The description of the Tag.
  /// [externalDocumentationDescription] The description of the external documentation resources describing the tag.
  /// [externalDocumentationUrl] The URL of external documentation resources describing the tag.
  ApiTagDescriptionState({
    pulumi.Output<String>? apiTagId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? externalDocumentationDescription,
    pulumi.Output<String>? externalDocumentationUrl,
  }) :
      apiTagId = pulumi.Input.asOptionalInput<String>(apiTagId),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalDocumentationDescription = pulumi.Input.asOptionalInput<String>(externalDocumentationDescription),
      externalDocumentationUrl = pulumi.Input.asOptionalInput<String>(externalDocumentationUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTagId': ?apiTagId,
      'description': ?description,
      'externalDocumentationDescription': ?externalDocumentationDescription,
      'externalDocumentationUrl': ?externalDocumentationUrl,
    };
  }

  factory ApiTagDescriptionState.fromMap(Map<String, dynamic> map) {
    return ApiTagDescriptionState(
      apiTagId: map['apiTagId'] == null ? null : pulumi.Output.create<String>(map['apiTagId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      externalDocumentationDescription: map['externalDocumentationDescription'] == null ? null : pulumi.Output.create<String>(map['externalDocumentationDescription'] as String),
      externalDocumentationUrl: map['externalDocumentationUrl'] == null ? null : pulumi.Output.create<String>(map['externalDocumentationUrl'] as String),
    );
  }
}

