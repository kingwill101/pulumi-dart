// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for data validation operations.
class GoogleCloudContentwarehouseV1DataValidationActionResponse {
  /// Map of (K, V) -&gt; (field, string condition to be evaluated on the field) E.g., ("age", "age &gt; 18 && age &lt; 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  final pulumi.Input<Map<String, String>> conditions;

  /// Creates a new [GoogleCloudContentwarehouseV1DataValidationActionResponse].
  /// [conditions] Map of (K, V) -&gt; (field, string condition to be evaluated on the field) E.g., ("age", "age &gt; 18 && age &lt; 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  GoogleCloudContentwarehouseV1DataValidationActionResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'conditions': conditions};
  }

  factory GoogleCloudContentwarehouseV1DataValidationActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1DataValidationActionResponse(
      conditions: pulumi.Input.fromValue(
        (map['conditions'] as Map).cast<String, String>(),
      ),
    );
  }
}
