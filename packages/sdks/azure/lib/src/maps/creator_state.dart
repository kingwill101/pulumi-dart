// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Creator resources.
class CreatorState {
  /// The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? mapsAccountId;
  /// The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final pulumi.Input<int?>? storageUnits;
  /// A mapping of tags which should be assigned to the Azure Maps Creator.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CreatorState].
  /// [location] The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  /// [mapsAccountId] The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [tags] A mapping of tags which should be assigned to the Azure Maps Creator.
  const CreatorState({
    this.location,
    this.mapsAccountId,
    this.name,
    this.storageUnits,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'mapsAccountId': ?mapsAccountId,
      'name': ?name,
      'storageUnits': ?storageUnits,
      'tags': ?tags,
    };
  }

  factory CreatorState.fromMap(Map<String, dynamic> map) {
    return CreatorState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapsAccountId: (() { final guardedValue = map['mapsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUnits: (() { final guardedValue = map['storageUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
