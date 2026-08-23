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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. A description of the data access label for a human reader.
  /// [displayName] Output only. The short name displayed for the label as it appears on event data. This is same as data access label id.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [lastEditor] Output only. The user who last updated the data access label.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] The unique resource name of the data access label. This unique identifier is generated using values provided for the URL parameters.
  /// [project] The ID of the project in which the resource belongs.
  /// [udmQuery] A UDM query over event data.
  /// [updateTime] Output only. The time at which the data access label was last updated.
  const DataAccessLabelState({
    this.author,
    this.createTime,
    this.dataAccessLabelId,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessLabelId: (() { final guardedValue = map['dataAccessLabelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastEditor: (() { final guardedValue = map['lastEditor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      udmQuery: (() { final guardedValue = map['udmQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
