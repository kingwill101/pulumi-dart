// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_glossary_category_glossary_category_args_doc}
/// The set of arguments for GlossaryCategory.
/// {@endtemplate}
/// {@macro pulumi_dataplex_glossary_category_glossary_category_args_doc}
class GlossaryCategoryArgs {
  /// The category id for creation.
  final pulumi.Input<String?>? categoryId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-mutable description of the GlossaryCategory.
  final pulumi.Input<String?>? description;
  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  final pulumi.Input<String?>? displayName;
  /// The glossary id for creation.
  final pulumi.Input<String?>? glossaryId;
  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where the glossary category should reside.
  final pulumi.Input<String> location;
  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  final pulumi.Input<String> parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GlossaryCategoryArgs].
  /// [categoryId] The category id for creation.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The user-mutable description of the GlossaryCategory.
  /// [displayName] User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryCategory.
  /// [location] The location where the glossary category should reside.
  /// [parent] The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  /// [project] The ID of the project in which the resource belongs.
  const GlossaryCategoryArgs({
    this.categoryId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.glossaryId,
    this.labels,
    required this.location,
    required this.parent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'glossaryId': ?glossaryId,
      'labels': ?labels,
      'location': location,
      'parent': parent,
      'project': ?project,
    };
  }

  factory GlossaryCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryCategoryArgs(
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glossaryId: (() { final guardedValue = map['glossaryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
