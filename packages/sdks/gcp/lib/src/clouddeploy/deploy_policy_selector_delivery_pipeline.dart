// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeployPolicySelectorDeliveryPipeline {
  /// ID of the DeliveryPipeline. The value of this field could be one of the following:
  /// - The last segment of a pipeline name
  /// - "*", all delivery pipelines in a location
  final pulumi.Input<String>? id;

  /// DeliveryPipeline labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [DeployPolicySelectorDeliveryPipeline].
  /// [id] ID of the DeliveryPipeline. The value of this field could be one of the following:
  /// [labels] DeliveryPipeline labels.
  DeployPolicySelectorDeliveryPipeline({this.id, this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'labels': ?labels};
  }

  factory DeployPolicySelectorDeliveryPipeline.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeployPolicySelectorDeliveryPipeline(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
