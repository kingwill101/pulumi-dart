// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scaling settings applied at the service level rather than at the revision level.
class GoogleCloudRunV2ServiceScaling {
  /// total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. (ALPHA)
  final pulumi.Input<int>? minInstanceCount;

  /// Creates a new [GoogleCloudRunV2ServiceScaling].
  /// [minInstanceCount] total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. (ALPHA)
  GoogleCloudRunV2ServiceScaling({this.minInstanceCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minInstanceCount': ?minInstanceCount};
  }

  factory GoogleCloudRunV2ServiceScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ServiceScaling(
      minInstanceCount: (() {
        final guardedValue = map['minInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
