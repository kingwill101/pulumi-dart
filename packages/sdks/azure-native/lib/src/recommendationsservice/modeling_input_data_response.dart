// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration to raw CDM data to be used as Modeling resource input.
class ModelingInputDataResponse {
  /// Connection string to raw input data.
  final pulumi.Input<String>? connectionString;

  /// Creates a new [ModelingInputDataResponse].
  /// [connectionString] Connection string to raw input data.
  ModelingInputDataResponse({this.connectionString});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'connectionString': ?connectionString};
  }

  factory ModelingInputDataResponse.fromMap(Map<String, dynamic> map) {
    return ModelingInputDataResponse(
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
