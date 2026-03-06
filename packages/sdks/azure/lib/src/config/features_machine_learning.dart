// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesMachineLearning {
  final pulumi.Input<bool>? purgeSoftDeletedWorkspaceOnDestroy;

  /// Creates a new [FeaturesMachineLearning].
  /// [purgeSoftDeletedWorkspaceOnDestroy] Optional.
  const FeaturesMachineLearning({
    this.purgeSoftDeletedWorkspaceOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeletedWorkspaceOnDestroy': ?purgeSoftDeletedWorkspaceOnDestroy,
    };
  }

  factory FeaturesMachineLearning.fromMap(Map<String, dynamic> map) {
    return FeaturesMachineLearning(
      purgeSoftDeletedWorkspaceOnDestroy: (() { final guardedValue = map['purgeSoftDeletedWorkspaceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

