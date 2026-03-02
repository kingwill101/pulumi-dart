// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_response.dart';

/// Represents a single entry for an unidirectional glossary.
class GlossaryTermsPairResponse {
  /// The source term is the term that will get match in the text,
  final pulumi.Input<GlossaryTermResponse> sourceTerm;
  /// The term that will replace the match source term.
  final pulumi.Input<GlossaryTermResponse> targetTerm;

  /// Creates a new [GlossaryTermsPairResponse].
  /// [sourceTerm] The source term is the term that will get match in the text,
  /// [targetTerm] The term that will replace the match source term.
  GlossaryTermsPairResponse({
    required this.sourceTerm,
    required this.targetTerm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTerm': pulumi.Input.mapInputValue<GlossaryTermResponse, Map<String, dynamic>>(sourceTerm, (value) => value.toMap()),
      'targetTerm': pulumi.Input.mapInputValue<GlossaryTermResponse, Map<String, dynamic>>(targetTerm, (value) => value.toMap()),
    };
  }

  factory GlossaryTermsPairResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsPairResponse(
      sourceTerm: (GlossaryTermResponse.fromMap((map['sourceTerm'] as Map).cast<String, dynamic>())).input(),
      targetTerm: (GlossaryTermResponse.fromMap((map['targetTerm'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

