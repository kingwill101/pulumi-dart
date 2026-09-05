// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adbs_character_sets_character_set.dart';

/// Result data returned by getAdbsCharacterSets.
class GetAdbsCharacterSetsResult {
  /// A `characterSets` block as defined below.
  final List<GetAdbsCharacterSetsCharacterSet>? characterSets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;

  /// Creates a new [GetAdbsCharacterSetsResult].
  /// [characterSets] A `characterSets` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  const GetAdbsCharacterSetsResult({
    this.characterSets,
    this.id,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSets': ?(() { final guardedValue = characterSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAdbsCharacterSetsCharacterSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
    };
  }

  factory GetAdbsCharacterSetsResult.fromMap(Map<String, dynamic> map) {
    return GetAdbsCharacterSetsResult(
      characterSets: (() { final guardedValue = map['characterSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAdbsCharacterSetsCharacterSet>(guardedValue, (value) => GetAdbsCharacterSetsCharacterSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
