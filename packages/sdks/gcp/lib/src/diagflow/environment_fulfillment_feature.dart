// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentFulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  /// Possible values are: `TYPE_UNSPECIFIED`, `SMALLTALK`.
  final pulumi.Input<String> type;

  /// Creates a new [EnvironmentFulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  const EnvironmentFulfillmentFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory EnvironmentFulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return EnvironmentFulfillmentFeature(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
