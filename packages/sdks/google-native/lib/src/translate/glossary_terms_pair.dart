// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term.dart';

/// Represents a single entry for an unidirectional glossary.
class GlossaryTermsPair {
  /// The source term is the term that will get match in the text,
  final pulumi.Input<GlossaryTerm>? sourceTerm;
  /// The term that will replace the match source term.
  final pulumi.Input<GlossaryTerm>? targetTerm;

  /// Creates a new [GlossaryTermsPair].
  /// [sourceTerm] The source term is the term that will get match in the text,
  /// [targetTerm] The term that will replace the match source term.
  const GlossaryTermsPair({
    this.sourceTerm,
    this.targetTerm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTerm': ?pulumi.Input.mapOptionalInputValue<GlossaryTerm, Map<String, dynamic>>(sourceTerm, (value) => value.toMap()),
      'targetTerm': ?pulumi.Input.mapOptionalInputValue<GlossaryTerm, Map<String, dynamic>>(targetTerm, (value) => value.toMap()),
    };
  }

  factory GlossaryTermsPair.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsPair(
      sourceTerm: (() { final guardedValue = map['sourceTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlossaryTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetTerm: (() { final guardedValue = map['targetTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlossaryTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
