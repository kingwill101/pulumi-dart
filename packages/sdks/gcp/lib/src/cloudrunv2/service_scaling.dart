// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceScaling {
  /// Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  final pulumi.Input<int>? manualInstanceCount;
  /// Combined maximum number of instances for all revisions receiving traffic.
  final pulumi.Input<int>? maxInstanceCount;
  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final pulumi.Input<int>? minInstanceCount;
  /// The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service.
  /// Possible values are: `AUTOMATIC`, `MANUAL`.
  final pulumi.Input<String>? scalingMode;

  /// Creates a new [ServiceScaling].
  /// [manualInstanceCount] Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.
  /// [maxInstanceCount] Combined maximum number of instances for all revisions receiving traffic.
  /// [minInstanceCount] Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  /// [scalingMode] The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service.
  ServiceScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualInstanceCount': ?manualInstanceCount,
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
      'scalingMode': ?scalingMode,
    };
  }

  factory ServiceScaling.fromMap(Map<String, dynamic> map) {
    return ServiceScaling(
      manualInstanceCount: map['manualInstanceCount'] == null ? null : (map['manualInstanceCount'] as int).input(),
      maxInstanceCount: map['maxInstanceCount'] == null ? null : (map['maxInstanceCount'] as int).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount'] as int).input(),
      scalingMode: map['scalingMode'] == null ? null : (map['scalingMode'] as String).input(),
    );
  }
}

