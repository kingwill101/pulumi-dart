// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObservatoryScheduledTestTestRegion {
  final pulumi.Input<String?>? label;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final pulumi.Input<String?>? value;

  /// Creates a new [ObservatoryScheduledTestTestRegion].
  /// [label] Optional.
  /// [value] A test region.
  const ObservatoryScheduledTestTestRegion({
    this.label,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'value': ?value,
    };
  }

  factory ObservatoryScheduledTestTestRegion.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestTestRegion(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
