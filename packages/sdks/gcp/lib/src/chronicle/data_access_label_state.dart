// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataAccessLabel resources.
class DataAccessLabelState {
  /// Output only. The user who created the data access label.
  final pulumi.Input<String>? author;
  /// Output only. The time at which the data access label was created.
  final pulumi.Input<String>? createTime;
  /// Required. The ID to use for the data access label, which will become the label's
  /// display name and the final component of the label's resource name. The
  /// maximum number of characters should be 63. Regex pattern is as per AIP:
  /// https://google.aip.dev/122#resource-id-segments
  final pulumi.Input<String>? dataAccessLabelId;
  /// Optional. A description of the data access label for a human reader.
  final pulumi.Input<String>? description;
  /// Output only. The short name displayed for the label as it appears on event data. This is same as data access label id.
  final pulumi.Input<String>? displayName;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// Output only. The user who last updated the data access label.
  final pulumi.Input<String>? lastEditor;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// The unique resource name of the data access label. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessLabels/{data_access_label_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A UDM query over event data.
  final pulumi.Input<String>? udmQuery;
  /// Output only. The time at which the data access label was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataAccessLabelState].
  /// [author] Output only. The user who created the data access label.
  /// [createTime] Output only. The time at which the data access label was created.
  /// [dataAccessLabelId] Required. The ID to use for the data access label, which will become the label's
  /// [description] Optional. A description of the data access label for a human reader.
  /// [displayName] Output only. The short name displayed for the label as it appears on event data. This is same as data access label id.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [lastEditor] Output only. The user who last updated the data access label.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] The unique resource name of the data access label. This unique identifier is generated using values provided for the URL parameters.
  /// [project] The ID of the project in which the resource belongs.
  /// [udmQuery] A UDM query over event data.
  /// [updateTime] Output only. The time at which the data access label was last updated.
  DataAccessLabelState({
    this.author,
    this.createTime,
    this.dataAccessLabelId,
    this.description,
    this.displayName,
    this.instance,
    this.lastEditor,
    this.location,
    this.name,
    this.project,
    this.udmQuery,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'createTime': ?createTime,
      'dataAccessLabelId': ?dataAccessLabelId,
      'description': ?description,
      'displayName': ?displayName,
      'instance': ?instance,
      'lastEditor': ?lastEditor,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'udmQuery': ?udmQuery,
      'updateTime': ?updateTime,
    };
  }

  factory DataAccessLabelState.fromMap(Map<String, dynamic> map) {
    return DataAccessLabelState(
      author: map['author'] == null ? null : (map['author'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataAccessLabelId: map['dataAccessLabelId'] == null ? null : (map['dataAccessLabelId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      lastEditor: map['lastEditor'] == null ? null : (map['lastEditor'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      udmQuery: map['udmQuery'] == null ? null : (map['udmQuery'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

