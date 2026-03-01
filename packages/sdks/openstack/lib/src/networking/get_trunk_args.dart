// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_trunk_get_trunk_args_doc}
/// Arguments for getTrunk.
/// {@endtemplate}
/// {@macro pulumi_networking_get_trunk_get_trunk_args_doc}
class GetTrunkArgs {
  /// The administrative state of the trunk.
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the trunk.
  final pulumi.Input<String>? description;
  /// The name of the trunk.
  final pulumi.Input<String>? name;
  /// The ID of the trunk parent port.
  final pulumi.Input<String>? portId;
  /// The owner of the trunk.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve trunk ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The status of the trunk.
  final pulumi.Input<String>? status;
  /// The list of trunk tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The ID of the trunk.
  final pulumi.Input<String>? trunkId;

  /// Creates a new [GetTrunkArgs].
  /// [adminStateUp] The administrative state of the trunk.
  /// [description] Human-readable description of the trunk.
  /// [name] The name of the trunk.
  /// [portId] The ID of the trunk parent port.
  /// [projectId] The owner of the trunk.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [status] The status of the trunk.
  /// [tags] The list of trunk tags to filter.
  /// [trunkId] The ID of the trunk.
  GetTrunkArgs({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? trunkId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      trunkId = pulumi.Input.asOptionalInput<String>(trunkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'name': ?name,
      'portId': ?portId,
      'projectId': ?projectId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'trunkId': ?trunkId,
    };
  }

  factory GetTrunkArgs.fromMap(Map<String, dynamic> map) {
    return GetTrunkArgs(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      trunkId: map['trunkId'] == null ? null : pulumi.Output.create<String>(map['trunkId'] as String),
    );
  }
}

