// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trunk_sub_port.dart';

/// Input properties used for looking up and filtering Trunk resources.
class TrunkState {
  /// Administrative up/down status for the trunk
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing trunk.
  final pulumi.Input<bool>? adminStateUp;
  /// The collection of tags assigned on the trunk, which have been
  /// explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;
  /// Human-readable description of the trunk. Changing this
  /// updates the name of the existing trunk.
  final pulumi.Input<String>? description;
  /// A unique name for the trunk. Changing this
  /// updates the `name` of an existing trunk.
  final pulumi.Input<String>? name;
  /// The ID of the port to be used as the parent port of the
  /// trunk. This is the port that should be used as the compute instance network
  /// port. Changing this creates a new trunk.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a trunk. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// trunk.
  final pulumi.Input<String>? region;
  /// The set of ports that will be made subports of the trunk.
  /// The structure of each subport is described below.
  final pulumi.Input<List<TrunkSubPort>>? subPorts;
  /// A set of string tags for the port.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the Trunk. Required if admin wants
  /// to create a trunk on behalf of another tenant. Changing this creates a new trunk.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [TrunkState].
  /// [adminStateUp] Administrative up/down status for the trunk
  /// [allTags] The collection of tags assigned on the trunk, which have been
  /// [description] Human-readable description of the trunk. Changing this
  /// [name] A unique name for the trunk. Changing this
  /// [portId] The ID of the port to be used as the parent port of the
  /// [region] The region in which to obtain the V2 networking client.
  /// [subPorts] The set of ports that will be made subports of the trunk.
  /// [tags] A set of string tags for the port.
  /// [tenantId] The owner of the Trunk. Required if admin wants
  TrunkState({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<List<String>>? allTags,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? region,
    pulumi.Output<List<TrunkSubPort>>? subPorts,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      allTags = pulumi.Input.asOptionalInput<List<String>>(allTags),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subPorts = pulumi.Input.asOptionalInput<List<TrunkSubPort>>(subPorts),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allTags': ?allTags,
      'description': ?description,
      'name': ?name,
      'portId': ?portId,
      'region': ?region,
      'subPorts': ?pulumi.Input.mapOptionalInputValue<List<TrunkSubPort>, List<Map<String, dynamic>>>(subPorts, (value) => pulumi.Input.encodeList<TrunkSubPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory TrunkState.fromMap(Map<String, dynamic> map) {
    return TrunkState(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      allTags: map['allTags'] == null ? null : pulumi.Output.create<List<String>>((map['allTags'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subPorts: map['subPorts'] == null ? null : pulumi.Output.create<List<TrunkSubPort>>(pulumi.Input.decodeList<TrunkSubPort>(map['subPorts'], (value) => TrunkSubPort.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

