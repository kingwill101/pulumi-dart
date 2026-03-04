// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeFeatures describes the set of features implemented by the CRI implementation. The features contained in the NodeFeatures should depend only on the cri implementation independent of runtime handlers.
class NodeFeaturesPatch {
  /// SupplementalGroupsPolicy is set to true if the runtime supports SupplementalGroupsPolicy and ContainerUser.
  final pulumi.Input<bool>? supplementalGroupsPolicy;

  /// Creates a new [NodeFeaturesPatch].
  /// [supplementalGroupsPolicy] SupplementalGroupsPolicy is set to true if the runtime supports SupplementalGroupsPolicy and ContainerUser.
  NodeFeaturesPatch({this.supplementalGroupsPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supplementalGroupsPolicy': ?supplementalGroupsPolicy,
    };
  }

  factory NodeFeaturesPatch.fromMap(Map<String, dynamic> map) {
    return NodeFeaturesPatch(
      supplementalGroupsPolicy: (() {
        final guardedValue = map['supplementalGroupsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
