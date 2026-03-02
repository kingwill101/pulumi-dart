// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostGroup resources.
class HostGroupState {
  /// Create time of the host group. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The list of hosts associated with the host group
  final pulumi.Input<List<String>>? hosts;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location (region) of the Host Group.
  final pulumi.Input<String>? location;
  /// The resource name of the Host Group. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  final pulumi.Input<String>? osType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of the Host Group.
  final pulumi.Input<String>? state;
  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  final pulumi.Input<String>? type;

  /// Creates a new [HostGroupState].
  /// [createTime] Create time of the host group. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [hosts] The list of hosts associated with the host group
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the Host Group.
  /// [name] The resource name of the Host Group. Needs to be unique per location.
  /// [osType] The OS type of the host group. It indicates the type of operating system
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the Host Group.
  /// [type] Type of the host group.
  HostGroupState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.hosts,
    this.labels,
    this.location,
    this.name,
    this.osType,
    this.project,
    this.pulumiLabels,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'hosts': ?hosts,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'type': ?type,
    };
  }

  factory HostGroupState.fromMap(Map<String, dynamic> map) {
    return HostGroupState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      hosts: map['hosts'] == null ? null : ((map['hosts']! as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

