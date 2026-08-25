// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_groups_instance_group_named_port.dart';

class GetInstanceGroupsInstanceGroup {
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// Textual description of the instance group.
  final pulumi.Input<String> description;
  /// The name of the instance group.
  final pulumi.Input<String> name;
  /// List of named ports in the group, as a list of objects, each with the following attributes:
  final pulumi.Input<List<GetInstanceGroupsInstanceGroupNamedPort>> namedPorts;
  /// The URL of the network the instance group is in.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The URI of the resource.
  final pulumi.Input<String> selfLink;
  /// The number of instances in the group.
  final pulumi.Input<int> size;
  /// The zone of the instance groups. If
  /// it is not provided, the provider zone is used.
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupsInstanceGroup].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] Textual description of the instance group.
  /// [name] The name of the instance group.
  /// [namedPorts] List of named ports in the group, as a list of objects, each with the following attributes:
  /// [network] The URL of the network the instance group is in.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [selfLink] The URI of the resource.
  /// [size] The number of instances in the group.
  /// [zone] The zone of the instance groups. If
  const GetInstanceGroupsInstanceGroup({
    required this.deletionPolicy,
    required this.description,
    required this.name,
    required this.namedPorts,
    required this.network,
    required this.project,
    required this.selfLink,
    required this.size,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'description': description,
      'name': name,
      'namedPorts': pulumi.Input.mapInputValue<List<GetInstanceGroupsInstanceGroupNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<GetInstanceGroupsInstanceGroupNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': network,
      'project': project,
      'selfLink': selfLink,
      'size': size,
      'zone': zone,
    };
  }

  factory GetInstanceGroupsInstanceGroup.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupsInstanceGroup(
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namedPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceGroupsInstanceGroupNamedPort>(map['namedPorts']!, (value) => GetInstanceGroupsInstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>()))),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
