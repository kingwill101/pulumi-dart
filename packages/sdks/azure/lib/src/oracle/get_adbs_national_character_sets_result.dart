// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adbs_national_character_sets_character_set.dart';

/// Result data returned by getAdbsNationalCharacterSets.
class GetAdbsNationalCharacterSetsResult {
  /// A `characterSets` block as defined below.
  final List<GetAdbsNationalCharacterSetsCharacterSet>? characterSets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;

  /// Creates a new [GetAdbsNationalCharacterSetsResult].
  /// [characterSets] A `characterSets` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  const GetAdbsNationalCharacterSetsResult({
    this.characterSets,
    this.id,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSets': ?(() { final guardedValue = characterSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAdbsNationalCharacterSetsCharacterSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
    };
  }

  factory GetAdbsNationalCharacterSetsResult.fromMap(Map<String, dynamic> map) {
    return GetAdbsNationalCharacterSetsResult(
      characterSets: (() { final guardedValue = map['characterSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAdbsNationalCharacterSetsCharacterSet>(guardedValue, (value) => GetAdbsNationalCharacterSetsCharacterSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
