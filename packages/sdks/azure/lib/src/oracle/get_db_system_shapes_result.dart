// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_system_shapes_db_system_shape.dart';

/// Result data returned by getDbSystemShapes.
class GetDbSystemShapesResult {
  /// A `dbSystemShapes` block as defined below.
  final List<GetDbSystemShapesDbSystemShape>? dbSystemShapes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? zone;

  /// Creates a new [GetDbSystemShapesResult].
  /// [dbSystemShapes] A `dbSystemShapes` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [zone] Optional.
  const GetDbSystemShapesResult({
    this.dbSystemShapes,
    this.id,
    this.location,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSystemShapes': ?(() { final guardedValue = dbSystemShapes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbSystemShapesDbSystemShape, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'zone': ?zone,
    };
  }

  factory GetDbSystemShapesResult.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesResult(
      dbSystemShapes: (() { final guardedValue = map['dbSystemShapes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbSystemShapesDbSystemShape>(guardedValue, (value) => GetDbSystemShapesDbSystemShape.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
