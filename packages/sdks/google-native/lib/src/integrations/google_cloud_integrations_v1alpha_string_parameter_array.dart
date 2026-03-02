// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of string array.
class GoogleCloudIntegrationsV1alphaStringParameterArray {
  /// String array.
  final pulumi.Input<List<String>>? stringValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaStringParameterArray].
  /// [stringValues] String array.
  GoogleCloudIntegrationsV1alphaStringParameterArray({
    this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValues': ?stringValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaStringParameterArray(
      stringValues: map['stringValues'] == null ? null : ((map['stringValues'] as List).cast<String>()).input(),
    );
  }
}

