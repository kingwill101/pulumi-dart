// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of double number array.
class GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse {
  /// Double number array.
  final pulumi.Input<List<double>> doubleValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse].
  /// [doubleValues] Double number array.
  const GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValues': doubleValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse(
      doubleValues: pulumi.Input.fromValue((map['doubleValues'] as List).cast<double>()),
    );
  }
}
