// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_note_analysis_kind.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryNote {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final pulumi.Input<DiscoveryNoteAnalysisKind> analysisKind;

  /// Creates a new [DiscoveryNote].
  /// [analysisKind] Immutable. The kind of analysis that is handled by this discovery.
  DiscoveryNote({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisKind': pulumi.Input.mapInputValue<DiscoveryNoteAnalysisKind, String>(analysisKind, (value) => value.wireValue),
    };
  }

  factory DiscoveryNote.fromMap(Map<String, dynamic> map) {
    return DiscoveryNote(
      analysisKind: pulumi.Input.fromValue(DiscoveryNoteAnalysisKind.fromValue(map['analysisKind']! as String)),
    );
  }
}

