// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateScaling {
  /// Maximum number of serving instances that this resource should have. Must not be less than minimum instance count. If absent, Cloud Run will calculate
  /// a default value based on the project's available container instances quota in the region and specified instance size.
  final pulumi.Input<int> maxInstanceCount;
  /// Minimum number of serving instances that this resource should have. Defaults to 0. Must not be greater than maximum instance count.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [GetServiceTemplateScaling].
  /// [maxInstanceCount] Maximum number of serving instances that this resource should have. Must not be less than minimum instance count. If absent, Cloud Run will calculate
  /// [minInstanceCount] Minimum number of serving instances that this resource should have. Defaults to 0. Must not be greater than maximum instance count.
  const GetServiceTemplateScaling({
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
    };
  }

  factory GetServiceTemplateScaling.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateScaling(
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
    );
  }
}

