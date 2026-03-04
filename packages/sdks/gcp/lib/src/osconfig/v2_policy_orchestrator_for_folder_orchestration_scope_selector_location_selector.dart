// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector {
  /// Names of the locations in scope.
  /// Format: `us-central1-a`
  final pulumi.Input<List<String>>? includedLocations;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector].
  /// [includedLocations] Names of the locations in scope.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector({
    this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'includedLocations': ?includedLocations};
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector(
      includedLocations: (() {
        final guardedValue = map['includedLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
