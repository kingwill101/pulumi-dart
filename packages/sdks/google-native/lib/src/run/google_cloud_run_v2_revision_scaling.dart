// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for revision-level scaling settings.
class GoogleCloudRunV2RevisionScaling {
  /// Maximum number of serving instances that this resource should have.
  final pulumi.Input<int?>? maxInstanceCount;
  /// Minimum number of serving instances that this resource should have.
  final pulumi.Input<int?>? minInstanceCount;

  /// Creates a new [GoogleCloudRunV2RevisionScaling].
  /// [maxInstanceCount] Maximum number of serving instances that this resource should have.
  /// [minInstanceCount] Minimum number of serving instances that this resource should have.
  const GoogleCloudRunV2RevisionScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
    };
  }

  factory GoogleCloudRunV2RevisionScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionScaling(
      maxInstanceCount: (() { final guardedValue = map['maxInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minInstanceCount: (() { final guardedValue = map['minInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
