// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features_parameter_schemas_parameter_schemas.dart';

class ApiShieldOperationFeaturesParameterSchemas {
  final pulumi.Input<String?>? lastUpdated;
  /// An operation schema object containing a response.
  final pulumi.Input<ApiShieldOperationFeaturesParameterSchemasParameterSchemas?>? parameterSchemas;

  /// Creates a new [ApiShieldOperationFeaturesParameterSchemas].
  /// [lastUpdated] Optional.
  /// [parameterSchemas] An operation schema object containing a response.
  const ApiShieldOperationFeaturesParameterSchemas({
    this.lastUpdated,
    this.parameterSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': ?lastUpdated,
      'parameterSchemas': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeaturesParameterSchemasParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
    };
  }

  factory ApiShieldOperationFeaturesParameterSchemas.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesParameterSchemas(
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterSchemas: (() { final guardedValue = map['parameterSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeaturesParameterSchemasParameterSchemas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
