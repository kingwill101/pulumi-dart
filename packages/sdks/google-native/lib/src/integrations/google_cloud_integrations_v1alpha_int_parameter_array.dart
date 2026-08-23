// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArray {
  /// Integer array.
  final pulumi.Input<List<String>>? intValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntParameterArray].
  /// [intValues] Integer array.
  const GoogleCloudIntegrationsV1alphaIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': ?intValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntParameterArray(
      intValues: (() { final guardedValue = map['intValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
