// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trunk_sub_port.dart';

/// {@template pulumi_networking_trunk_trunk_args_doc}
/// The set of arguments for Trunk.
/// {@endtemplate}
/// {@macro pulumi_networking_trunk_trunk_args_doc}
class TrunkArgs {
  /// Administrative up/down status for the trunk
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing trunk.
  final pulumi.Input<bool>? adminStateUp;

  /// Human-readable description of the trunk. Changing this
  /// updates the name of the existing trunk.
  final pulumi.Input<String>? description;

  /// A unique name for the trunk. Changing this
  /// updates the `name` of an existing trunk.
  final pulumi.Input<String>? name;

  /// The ID of the port to be used as the parent port of the
  /// trunk. This is the port that should be used as the compute instance network
  /// port. Changing this creates a new trunk.
  final pulumi.Input<String> portId;

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

  /// Creates a new [TrunkArgs].
  /// [adminStateUp] Administrative up/down status for the trunk
  /// [description] Human-readable description of the trunk. Changing this
  /// [name] A unique name for the trunk. Changing this
  /// [portId] The ID of the port to be used as the parent port of the
  /// [region] The region in which to obtain the V2 networking client.
  /// [subPorts] The set of ports that will be made subports of the trunk.
  /// [tags] A set of string tags for the port.
  /// [tenantId] The owner of the Trunk. Required if admin wants
  TrunkArgs({
    this.adminStateUp,
    this.description,
    this.name,
    required this.portId,
    this.region,
    this.subPorts,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'name': ?name,
      'portId': portId,
      'region': ?region,
      'subPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrunkSubPort>,
            List<Map<String, dynamic>>
          >(
            subPorts,
            (value) =>
                pulumi.Input.encodeList<TrunkSubPort, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory TrunkArgs.fromMap(Map<String, dynamic> map) {
    return TrunkArgs(
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portId: pulumi.Input.fromValue(map['portId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subPorts: (() {
        final guardedValue = map['subPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrunkSubPort>(
            guardedValue,
            (value) =>
                TrunkSubPort.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
