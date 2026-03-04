// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlossaryCategory resources.
class GlossaryCategoryState {
  /// The category id for creation.
  final pulumi.Input<String>? categoryId;

  /// The time at which the GlossaryCategory was created.
  final pulumi.Input<String>? createTime;

  /// The user-mutable description of the GlossaryCategory.
  final pulumi.Input<String>? description;

  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  final pulumi.Input<String>? displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;

  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the glossary category should reside.
  final pulumi.Input<String>? location;

  /// The resource name of the GlossaryCategory. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  final pulumi.Input<String>? name;

  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  final pulumi.Input<String>? parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// System generated unique id for the GlossaryCategory. This ID will be different if the GlossaryCategory is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;

  /// The time at which the GlossaryCategory was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GlossaryCategoryState].
  /// [categoryId] The category id for creation.
  /// [createTime] The time at which the GlossaryCategory was created.
  /// [description] The user-mutable description of the GlossaryCategory.
  /// [displayName] User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryCategory.
  /// [location] The location where the glossary category should reside.
  /// [name] The resource name of the GlossaryCategory. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  /// [parent] The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] System generated unique id for the GlossaryCategory. This ID will be different if the GlossaryCategory is deleted and re-created with the same name.
  /// [updateTime] The time at which the GlossaryCategory was last updated.
  GlossaryCategoryState({
    this.categoryId,
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.glossaryId,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.project,
    this.pulumiLabels,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'glossaryId': ?glossaryId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GlossaryCategoryState.fromMap(Map<String, dynamic> map) {
    return GlossaryCategoryState(
      categoryId: (() {
        final guardedValue = map['categoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      glossaryId: (() {
        final guardedValue = map['glossaryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
