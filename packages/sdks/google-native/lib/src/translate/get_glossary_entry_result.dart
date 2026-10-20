// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_terms_pair_response.dart';
import 'glossary_terms_set_response.dart';

/// Result data returned by getGlossaryEntry.
class GetGlossaryEntryResult {
  /// Describes the glossary entry.
  final String? description;
  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  final String? name;
  /// Used for an unidirectional glossary.
  final GlossaryTermsPairResponse? termsPair;
  /// Used for an equivalent term sets glossary.
  final GlossaryTermsSetResponse? termsSet;

  /// Creates a new [GetGlossaryEntryResult].
  /// [description] Describes the glossary entry.
  /// [name] The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  /// [termsPair] Used for an unidirectional glossary.
  /// [termsSet] Used for an equivalent term sets glossary.
  const GetGlossaryEntryResult({
    this.description,
    this.name,
    this.termsPair,
    this.termsSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'termsPair': ?termsPair?.toMap(),
      'termsSet': ?termsSet?.toMap(),
    };
  }

  factory GetGlossaryEntryResult.fromMap(Map<String, dynamic> map) {
    return GetGlossaryEntryResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      termsPair: (() { final guardedValue = map['termsPair']; if (guardedValue == null) return null; return GlossaryTermsPairResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      termsSet: (() { final guardedValue = map['termsSet']; if (guardedValue == null) return null; return GlossaryTermsSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
