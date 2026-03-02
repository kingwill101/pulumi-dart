// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesMachineLearning {
  final pulumi.Input<bool>? purgeSoftDeletedWorkspaceOnDestroy;

  /// Creates a new [ProviderFeaturesMachineLearning].
  /// [purgeSoftDeletedWorkspaceOnDestroy] Optional.
  ProviderFeaturesMachineLearning({
    this.purgeSoftDeletedWorkspaceOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeletedWorkspaceOnDestroy': ?purgeSoftDeletedWorkspaceOnDestroy,
    };
  }

  factory ProviderFeaturesMachineLearning.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesMachineLearning(
      purgeSoftDeletedWorkspaceOnDestroy: map['purgeSoftDeletedWorkspaceOnDestroy'] == null ? null : (map['purgeSoftDeletedWorkspaceOnDestroy'] as bool).input(),
    );
  }
}

