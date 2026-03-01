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
    pulumi.Output<String>? author,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataAccessLabelId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? lastEditor,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? udmQuery,
    pulumi.Output<String>? updateTime,
  }) :
      author = pulumi.Input.asOptionalInput<String>(author),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataAccessLabelId = pulumi.Input.asOptionalInput<String>(dataAccessLabelId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      lastEditor = pulumi.Input.asOptionalInput<String>(lastEditor),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      udmQuery = pulumi.Input.asOptionalInput<String>(udmQuery),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataAccessLabelId: map['dataAccessLabelId'] == null ? null : pulumi.Output.create<String>(map['dataAccessLabelId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      lastEditor: map['lastEditor'] == null ? null : pulumi.Output.create<String>(map['lastEditor'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      udmQuery: map['udmQuery'] == null ? null : pulumi.Output.create<String>(map['udmQuery'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

