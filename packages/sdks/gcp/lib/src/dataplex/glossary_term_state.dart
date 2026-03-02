// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlossaryTerm resources.
class GlossaryTermState {
  /// The time at which the GlossaryTerm was created.
  final pulumi.Input<String>? createTime;
  /// The user-mutable description of the GlossaryTerm.
  final pulumi.Input<String>? description;
  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;
  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the glossary term should reside.
  final pulumi.Input<String>? location;
  /// The resource name of the GlossaryTerm. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
  final pulumi.Input<String>? name;
  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  final pulumi.Input<String>? parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The term id for creation.
  final pulumi.Input<String>? termId;
  /// System generated unique id for the GlossaryTerm. This ID will be different if the GlossaryTerm is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time at which the GlossaryTerm was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GlossaryTermState].
  /// [createTime] The time at which the GlossaryTerm was created.
  /// [description] The user-mutable description of the GlossaryTerm.
  /// [displayName] User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryTerm.
  /// [location] The location where the glossary term should reside.
  /// [name] The resource name of the GlossaryTerm. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
  /// [parent] The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [termId] The term id for creation.
  /// [uid] System generated unique id for the GlossaryTerm. This ID will be different if the GlossaryTerm is deleted and re-created with the same name.
  /// [updateTime] The time at which the GlossaryTerm was last updated.
  GlossaryTermState({
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
    this.termId,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'termId': ?termId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GlossaryTermState.fromMap(Map<String, dynamic> map) {
    return GlossaryTermState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      glossaryId: map['glossaryId'] == null ? null : (map['glossaryId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      termId: map['termId'] == null ? null : (map['termId']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

