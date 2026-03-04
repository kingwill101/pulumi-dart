// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceScaling {
  /// Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  final pulumi.Input<int> manualInstanceCount;

  /// Combined maximum number of instances for all revisions receiving traffic.
  final pulumi.Input<int> maxInstanceCount;

  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final pulumi.Input<int> minInstanceCount;

  /// The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service. Possible values: ["AUTOMATIC", "MANUAL"]
  final pulumi.Input<String> scalingMode;

  /// Creates a new [GetServiceScaling].
  /// [manualInstanceCount] Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  /// [maxInstanceCount] Combined maximum number of instances for all revisions receiving traffic.
  /// [minInstanceCount] Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  /// [scalingMode] The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service. Possible values: ["AUTOMATIC", "MANUAL"]
  GetServiceScaling({
    required this.manualInstanceCount,
    required this.maxInstanceCount,
    required this.minInstanceCount,
    required this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualInstanceCount': manualInstanceCount,
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
      'scalingMode': scalingMode,
    };
  }

  factory GetServiceScaling.fromMap(Map<String, dynamic> map) {
    return GetServiceScaling(
      manualInstanceCount: pulumi.Input.fromValue(
        map['manualInstanceCount'] as int,
      ),
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
      scalingMode: pulumi.Input.fromValue(map['scalingMode'] as String),
    );
  }
}
