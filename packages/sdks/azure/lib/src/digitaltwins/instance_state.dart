// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_identity.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The API endpoint to work with this Digital Twins instance.
  final pulumi.Input<String>? hostName;
  /// An `identity` block as defined below.
  final pulumi.Input<InstanceIdentity>? identity;
  /// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Digital Twins instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceState].
  /// [hostName] The API endpoint to work with this Digital Twins instance.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  /// [name] The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created.
  /// [resourceGroupName] The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  /// [tags] A mapping of tags which should be assigned to the Digital Twins instance.
  InstanceState({
    pulumi.Output<String>? hostName,
    pulumi.Output<InstanceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      identity = pulumi.Input.asOptionalInput<InstanceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'identity': ?pulumi.Input.mapOptionalInputValue<InstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<InstanceIdentity>(InstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

