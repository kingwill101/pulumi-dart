// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuilderConfigContaineranalysisV1alpha1 {
  final pulumi.Input<String>? id;

  /// Creates a new [BuilderConfigContaineranalysisV1alpha1].
  /// [id] Optional.
  BuilderConfigContaineranalysisV1alpha1({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BuilderConfigContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuilderConfigContaineranalysisV1alpha1(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

