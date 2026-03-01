// ignore_for_file: unused_element, unnecessary_cast

import 'discovery_note_analysis_kind.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryNote {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final DiscoveryNoteAnalysisKind analysisKind;

  /// Creates a new [DiscoveryNote].
  /// [analysisKind] Immutable. The kind of analysis that is handled by this discovery.
  DiscoveryNote({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisKind': analysisKind.value,
    };
  }

  factory DiscoveryNote.fromMap(Map<String, dynamic> map) {
    return DiscoveryNote(
      analysisKind: DiscoveryNoteAnalysisKind.fromValue(map['analysisKind'] as String),
    );
  }
}

