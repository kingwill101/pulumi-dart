// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_adbs_character_sets_get_adbs_character_sets_args_doc}
/// Arguments for getAdbsCharacterSets.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_adbs_character_sets_get_adbs_character_sets_args_doc}
class GetAdbsCharacterSetsArgs {
  /// The Azure Region to query for the character sets in.
  final pulumi.Input<String> location;

  /// Creates a new [GetAdbsCharacterSetsArgs].
  /// [location] The Azure Region to query for the character sets in.
  GetAdbsCharacterSetsArgs({
    required pulumi.Output<String> location,
  }) :
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetAdbsCharacterSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetAdbsCharacterSetsArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

