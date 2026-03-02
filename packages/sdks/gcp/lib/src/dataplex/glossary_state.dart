// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Glossary resources.
class GlossaryState {
  /// The number of categories in the glossary.
  final pulumi.Input<int>? categoryCount;
  /// The time at which the glossary was created.
  final pulumi.Input<String>? createTime;
  /// The user-mutable description of the glossary.
  final pulumi.Input<String>? description;
  /// User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;
  /// User-defined labels for the Glossary.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the glossary should reside.
  final pulumi.Input<String>? location;
  /// The resource name of the Glossary. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The number of terms in the glossary.
  final pulumi.Input<int>? termCount;
  /// System generated unique id for the Glossary. This ID will be different if the Glossary is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time at which the glossary was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GlossaryState].
  /// [categoryCount] The number of categories in the glossary.
  /// [createTime] The time at which the glossary was created.
  /// [description] The user-mutable description of the glossary.
  /// [displayName] User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the Glossary.
  /// [location] The location where the glossary should reside.
  /// [name] The resource name of the Glossary. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [termCount] The number of terms in the glossary.
  /// [uid] System generated unique id for the Glossary. This ID will be different if the Glossary is deleted and re-created with the same name.
  /// [updateTime] The time at which the glossary was last updated.
  GlossaryState({
    this.categoryCount,
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.glossaryId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.termCount,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryCount': ?categoryCount,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'glossaryId': ?glossaryId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'termCount': ?termCount,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GlossaryState.fromMap(Map<String, dynamic> map) {
    return GlossaryState(
      categoryCount: map['categoryCount'] == null ? null : (map['categoryCount']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      glossaryId: map['glossaryId'] == null ? null : (map['glossaryId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      termCount: map['termCount'] == null ? null : (map['termCount']! as int).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

