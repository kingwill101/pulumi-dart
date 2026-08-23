// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigHorizontalPodAutoscaling {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterAddonsConfigHorizontalPodAutoscaling].
  /// [disabled] Required.
  const GetClusterAddonsConfigHorizontalPodAutoscaling({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterAddonsConfigHorizontalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigHorizontalPodAutoscaling(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
