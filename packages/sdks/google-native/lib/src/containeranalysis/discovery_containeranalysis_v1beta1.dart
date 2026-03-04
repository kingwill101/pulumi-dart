// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_analysis_kind_containeranalysis_v1beta1.dart';

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.
class DiscoveryContaineranalysisV1beta1 {
  /// Immutable. The kind of analysis that is handled by this discovery.
  final pulumi.Input<DiscoveryAnalysisKindContaineranalysisV1beta1>
  analysisKind;

  /// Creates a new [DiscoveryContaineranalysisV1beta1].
  /// [analysisKind] Immutable. The kind of analysis that is handled by this discovery.
  DiscoveryContaineranalysisV1beta1({required this.analysisKind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisKind':
          pulumi.Input.mapInputValue<
            DiscoveryAnalysisKindContaineranalysisV1beta1,
            String
          >(analysisKind, (value) => value.wireValue),
    };
  }

  factory DiscoveryContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DiscoveryContaineranalysisV1beta1(
      analysisKind: pulumi.Input.fromValue(
        DiscoveryAnalysisKindContaineranalysisV1beta1.fromValue(
          map['analysisKind']! as String,
        ),
      ),
    );
  }
}
