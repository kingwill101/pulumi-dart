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
    this.adminStateUp,
    this.description,
    this.name,
    this.portId,
    this.projectId,
    this.region,
    this.status,
    this.tags,
    this.trunkId,
  });

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
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trunkId: (() { final guardedValue = map['trunkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

