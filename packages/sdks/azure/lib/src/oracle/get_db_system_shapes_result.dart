// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_system_shapes_db_system_shape.dart';

/// Result data returned by getDbSystemShapes.
class GetDbSystemShapesResult {
  /// A `db_system_shapes` block as defined below.
  final List<GetDbSystemShapesDbSystemShape> dbSystemShapes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? zone;

  /// Creates a new [GetDbSystemShapesResult].
  /// [dbSystemShapes] A `db_system_shapes` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [zone] Optional.
  GetDbSystemShapesResult({
    required this.dbSystemShapes,
    required this.id,
    required this.location,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSystemShapes': pulumi.Input.encodeList<GetDbSystemShapesDbSystemShape, Map<String, dynamic>>(dbSystemShapes, (value) => value.toMap()),
      'id': id,
      'location': location,
      'zone': ?zone,
    };
  }

  factory GetDbSystemShapesResult.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesResult(
      dbSystemShapes: pulumi.Input.decodeList<GetDbSystemShapesDbSystemShape>(map['dbSystemShapes'], (value) => GetDbSystemShapesDbSystemShape.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      zone: map['zone'] == null ? null : map['zone']! as String,
    );
  }
}

