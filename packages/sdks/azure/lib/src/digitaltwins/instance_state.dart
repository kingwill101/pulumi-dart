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
    this.hostName,
    this.identity,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

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
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

