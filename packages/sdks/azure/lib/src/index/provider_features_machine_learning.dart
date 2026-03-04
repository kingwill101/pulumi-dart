// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesMachineLearning {
  final pulumi.Input<bool>? purgeSoftDeletedWorkspaceOnDestroy;

  /// Creates a new [ProviderFeaturesMachineLearning].
  /// [purgeSoftDeletedWorkspaceOnDestroy] Optional.
  ProviderFeaturesMachineLearning({this.purgeSoftDeletedWorkspaceOnDestroy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeletedWorkspaceOnDestroy': ?purgeSoftDeletedWorkspaceOnDestroy,
    };
  }

  factory ProviderFeaturesMachineLearning.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesMachineLearning(
      purgeSoftDeletedWorkspaceOnDestroy: (() {
        final guardedValue = map['purgeSoftDeletedWorkspaceOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
