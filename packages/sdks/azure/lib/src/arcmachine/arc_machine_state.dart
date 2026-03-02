// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_machine_identity.dart';

/// Input properties used for looking up and filtering ArcMachine resources.
class ArcMachineState {
  /// An `identity` block as defined below.
  final pulumi.Input<ArcMachineIdentity>? identity;
  /// The kind of the Arc Machine. Possible values are `AVS`, `AWS`, `EPS`, `GCP`, `HCI`, `SCVMM` and `VMware`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Arc Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Arc machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Arc Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Arc Machine.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ArcMachineState].
  /// [identity] An `identity` block as defined below.
  /// [kind] The kind of the Arc Machine. Possible values are `AVS`, `AWS`, `EPS`, `GCP`, `HCI`, `SCVMM` and `VMware`. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Arc Machine should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Arc machine. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Arc Machine should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Arc Machine.
  ArcMachineState({
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ArcMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ArcMachineState.fromMap(Map<String, dynamic> map) {
    return ArcMachineState(
      identity: map['identity'] == null ? null : (ArcMachineIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

