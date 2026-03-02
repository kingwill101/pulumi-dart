// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector {
  /// Optional. Names of the locations in scope.
  /// Format: `us-central1-a`
  final pulumi.Input<List<String>>? includedLocations;

  /// Creates a new [V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector].
  /// [includedLocations] Optional. Names of the locations in scope.
  V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector({
    this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedLocations': ?includedLocations,
    };
  }

  factory V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector(
      includedLocations: map['includedLocations'] == null ? null : ((map['includedLocations']! as List).cast<String>()).input(),
    );
  }
}

