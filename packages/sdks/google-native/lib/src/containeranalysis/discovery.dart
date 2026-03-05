// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_analysis_kind.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis. The occurrence's operation will indicate the status of the analysis. Absence of an occurrence linked to this note for a resource indicates that analysis hasn't started.
class Discovery {
  /// The kind of analysis that is handled by this discovery.
  final pulumi.Input<DiscoveryAnalysisKind>? analysisKind;

  /// Creates a new [Discovery].
  /// [analysisKind] The kind of analysis that is handled by this discovery.
  Discovery({
    this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisKind': ?pulumi.Input.mapOptionalInputValue<DiscoveryAnalysisKind, String>(analysisKind, (value) => value.wireValue),
    };
  }

  factory Discovery.fromMap(Map<String, dynamic> map) {
    return Discovery(
      analysisKind: (() { final guardedValue = map['analysisKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveryAnalysisKind.fromValue(guardedValue as String)); })(),
    );
  }
}

