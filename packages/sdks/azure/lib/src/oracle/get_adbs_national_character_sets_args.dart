// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_adbs_national_character_sets_get_adbs_national_character_sets_args_doc}
/// Arguments for getAdbsNationalCharacterSets.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_adbs_national_character_sets_get_adbs_national_character_sets_args_doc}
class GetAdbsNationalCharacterSetsArgs {
  /// The Azure Region to query for the national character sets in.
  final pulumi.Input<String> location;

  /// Creates a new [GetAdbsNationalCharacterSetsArgs].
  /// [location] The Azure Region to query for the national character sets in.
  GetAdbsNationalCharacterSetsArgs({
    required pulumi.Output<String> location,
  }) :
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetAdbsNationalCharacterSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetAdbsNationalCharacterSetsArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

