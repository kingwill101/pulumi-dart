// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of boolean array.
class GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse {
  /// Boolean array.
  final pulumi.Input<List<bool>> booleanValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse].
  /// [booleanValues] Boolean array.
  GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': booleanValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse(
      booleanValues: pulumi.Input.fromValue((map['booleanValues'] as List).cast<bool>()),
    );
  }
}

