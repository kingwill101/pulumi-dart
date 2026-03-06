// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_response.dart';

/// Represents a single entry for an equivalent term set glossary. This is used for equivalent term sets where each term can be replaced by the other terms in the set.
class GlossaryTermsSetResponse {
  /// Each term in the set represents a term that can be replaced by the other terms.
  final pulumi.Input<List<GlossaryTermResponse>> terms;

  /// Creates a new [GlossaryTermsSetResponse].
  /// [terms] Each term in the set represents a term that can be replaced by the other terms.
  const GlossaryTermsSetResponse({
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terms': pulumi.Input.mapInputValue<List<GlossaryTermResponse>, List<Map<String, dynamic>>>(terms, (value) => pulumi.Input.encodeList<GlossaryTermResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GlossaryTermsSetResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsSetResponse(
      terms: pulumi.Input.fromValue(pulumi.Input.decodeList<GlossaryTermResponse>(map['terms']!, (value) => GlossaryTermResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

