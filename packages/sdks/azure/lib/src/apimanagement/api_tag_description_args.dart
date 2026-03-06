// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_tag_description_api_tag_description_args_doc}
/// The set of arguments for ApiTagDescription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_tag_description_api_tag_description_args_doc}
class ApiTagDescriptionArgs {
  /// The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  final pulumi.Input<String> apiTagId;
  /// The description of the Tag.
  final pulumi.Input<String>? description;
  /// The description of the external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationDescription;
  /// The URL of external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationUrl;

  /// Creates a new [ApiTagDescriptionArgs].
  /// [apiTagId] The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  /// [description] The description of the Tag.
  /// [externalDocumentationDescription] The description of the external documentation resources describing the tag.
  /// [externalDocumentationUrl] The URL of external documentation resources describing the tag.
  const ApiTagDescriptionArgs({
    required this.apiTagId,
    this.description,
    this.externalDocumentationDescription,
    this.externalDocumentationUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTagId': apiTagId,
      'description': ?description,
      'externalDocumentationDescription': ?externalDocumentationDescription,
      'externalDocumentationUrl': ?externalDocumentationUrl,
    };
  }

  factory ApiTagDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return ApiTagDescriptionArgs(
      apiTagId: pulumi.Input.fromValue(map['apiTagId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDocumentationDescription: (() { final guardedValue = map['externalDocumentationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDocumentationUrl: (() { final guardedValue = map['externalDocumentationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

