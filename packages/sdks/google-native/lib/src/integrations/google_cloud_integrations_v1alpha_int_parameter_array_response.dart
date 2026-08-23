// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArrayResponse {
  /// Integer array.
  final pulumi.Input<List<String>> intValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntParameterArrayResponse].
  /// [intValues] Integer array.
  const GoogleCloudIntegrationsV1alphaIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': intValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntParameterArrayResponse(
      intValues: pulumi.Input.fromValue((map['intValues'] as List).cast<String>()),
    );
  }
}
