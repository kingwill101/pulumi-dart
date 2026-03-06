// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adbs_national_character_sets_character_set.dart';

/// Result data returned by getAdbsNationalCharacterSets.
class GetAdbsNationalCharacterSetsResult {
  /// A `character_sets` block as defined below.
  final List<GetAdbsNationalCharacterSetsCharacterSet> characterSets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// Creates a new [GetAdbsNationalCharacterSetsResult].
  /// [characterSets] A `character_sets` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  const GetAdbsNationalCharacterSetsResult({
    required this.characterSets,
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSets': pulumi.Input.encodeList<GetAdbsNationalCharacterSetsCharacterSet, Map<String, dynamic>>(characterSets, (value) => value.toMap()),
      'id': id,
      'location': location,
    };
  }

  factory GetAdbsNationalCharacterSetsResult.fromMap(Map<String, dynamic> map) {
    return GetAdbsNationalCharacterSetsResult(
      characterSets: pulumi.Input.decodeList<GetAdbsNationalCharacterSetsCharacterSet>(map['characterSets']!, (value) => GetAdbsNationalCharacterSetsCharacterSet.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
    );
  }
}

