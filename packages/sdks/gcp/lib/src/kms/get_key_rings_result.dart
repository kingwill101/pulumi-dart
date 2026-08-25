// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_rings_key_ring.dart';

/// Result data returned by getKeyRings.
class GetKeyRingsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of all the retrieved key rings from the provided location. This list is influenced by the provided filter argument.
  final List<GetKeyRingsKeyRing>? keyRings;
  final String? location;
  final String? project;

  /// Creates a new [GetKeyRingsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRings] A list of all the retrieved key rings from the provided location. This list is influenced by the provided filter argument.
  /// [location] Optional.
  /// [project] Optional.
  const GetKeyRingsResult({
    this.filter,
    this.id,
    this.keyRings,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'keyRings': ?(() { final guardedValue = keyRings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyRingsKeyRing, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetKeyRingsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyRings: (() { final guardedValue = map['keyRings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyRingsKeyRing>(guardedValue, (value) => GetKeyRingsKeyRing.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
