// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_creator_creator_args_doc}
/// The set of arguments for Creator.
/// {@endtemplate}
/// {@macro pulumi_maps_creator_creator_args_doc}
class CreatorArgs {
  /// The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String> mapsAccountId;
  /// The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final pulumi.Input<int> storageUnits;
  /// A mapping of tags which should be assigned to the Azure Maps Creator.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CreatorArgs].
  /// [location] The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created.
  /// [mapsAccountId] The ID of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Maps Creator. Changing this forces a new resource to be created.
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [tags] A mapping of tags which should be assigned to the Azure Maps Creator.
  CreatorArgs({
    this.location,
    required this.mapsAccountId,
    this.name,
    required this.storageUnits,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'mapsAccountId': mapsAccountId,
      'name': ?name,
      'storageUnits': storageUnits,
      'tags': ?tags,
    };
  }

  factory CreatorArgs.fromMap(Map<String, dynamic> map) {
    return CreatorArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapsAccountId: pulumi.Input.fromValue(map['mapsAccountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUnits: pulumi.Input.fromValue(map['storageUnits'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

