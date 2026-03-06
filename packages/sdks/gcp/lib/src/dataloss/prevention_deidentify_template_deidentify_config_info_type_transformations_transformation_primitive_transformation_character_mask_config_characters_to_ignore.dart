// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore {
  /// Characters to not transform when masking. Only one of this or `common_characters_to_ignore` must be specified.
  final pulumi.Input<String>? charactersToSkip;
  /// Common characters to not transform when masking. Useful to avoid removing punctuation. Only one of this or `characters_to_skip` must be specified.
  /// Possible values are: `NUMERIC`, `ALPHA_UPPER_CASE`, `ALPHA_LOWER_CASE`, `PUNCTUATION`, `WHITESPACE`.
  final pulumi.Input<String>? commonCharactersToIgnore;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore].
  /// [charactersToSkip] Characters to not transform when masking. Only one of this or `common_characters_to_ignore` must be specified.
  /// [commonCharactersToIgnore] Common characters to not transform when masking. Useful to avoid removing punctuation. Only one of this or `characters_to_skip` must be specified.
  const PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charactersToSkip': ?charactersToSkip,
      'commonCharactersToIgnore': ?commonCharactersToIgnore,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore(
      charactersToSkip: (() { final guardedValue = map['charactersToSkip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonCharactersToIgnore: (() { final guardedValue = map['commonCharactersToIgnore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

