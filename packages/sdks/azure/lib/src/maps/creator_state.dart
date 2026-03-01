// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Creator resources.
class CreatorState {
  /// The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mapsAccountId;
  /// The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final pulumi.Input<int>? storageUnits;
  /// A mapping of tags which should be assigned to the Azure Maps Creator.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CreatorState].
  /// [location] The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  /// [mapsAccountId] The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [tags] A mapping of tags which should be assigned to the Azure Maps Creator.
  CreatorState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? mapsAccountId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? storageUnits,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      mapsAccountId = pulumi.Input.asOptionalInput<String>(mapsAccountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageUnits = pulumi.Input.asOptionalInput<int>(storageUnits),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mapsAccountId: map['mapsAccountId'] == null ? null : pulumi.Output.create<String>(map['mapsAccountId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageUnits: map['storageUnits'] == null ? null : pulumi.Output.create<int>(map['storageUnits'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

