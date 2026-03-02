// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of double number array.
class GoogleCloudIntegrationsV1alphaDoubleParameterArray {
  /// Double number array.
  final pulumi.Input<List<double>>? doubleValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaDoubleParameterArray].
  /// [doubleValues] Double number array.
  GoogleCloudIntegrationsV1alphaDoubleParameterArray({
    this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValues': ?doubleValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaDoubleParameterArray(
      doubleValues: map['doubleValues'] == null ? null : ((map['doubleValues'] as List).cast<double>()).input(),
    );
  }
}

