// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_host_group_host_group_args_doc}
/// The set of arguments for HostGroup.
/// {@endtemplate}
/// {@macro pulumi_netapp_host_group_host_group_args_doc}
class HostGroupArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The list of hosts associated with the host group
  final pulumi.Input<List<String>> hosts;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location (region) of the Host Group.
  final pulumi.Input<String> location;
  /// The resource name of the Host Group. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  final pulumi.Input<String> osType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  final pulumi.Input<String> type;

  /// Creates a new [HostGroupArgs].
  /// [description] An optional description of this resource.
  /// [hosts] The list of hosts associated with the host group
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the Host Group.
  /// [name] The resource name of the Host Group. Needs to be unique per location.
  /// [osType] The OS type of the host group. It indicates the type of operating system
  /// [project] The ID of the project in which the resource belongs.
  /// [type] Type of the host group.
  HostGroupArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<List<String>> hosts,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> osType,
    pulumi.Output<String>? project,
    required pulumi.Output<String> type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      hosts = pulumi.Input.asInput<List<String>>(hosts),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asInput<String>(osType),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hosts': hosts,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'osType': osType,
      'project': ?project,
      'type': type,
    };
  }

  factory HostGroupArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hosts: pulumi.Output.create<List<String>>((map['hosts'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: pulumi.Output.create<String>(map['osType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

