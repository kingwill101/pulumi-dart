// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis. The occurrence's operation will indicate the status of the analysis. Absence of an occurrence linked to this note for a resource indicates that analysis hasn't started.
class DiscoveryResponse {
  /// The kind of analysis that is handled by this discovery.
  final pulumi.Input<String> analysisKind;

  /// Creates a new [DiscoveryResponse].
  /// [analysisKind] The kind of analysis that is handled by this discovery.
  DiscoveryResponse({
    required this.analysisKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisKind': analysisKind,
    };
  }

  factory DiscoveryResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryResponse(
      analysisKind: (map['analysisKind'] as String).input(),
    );
  }
}

