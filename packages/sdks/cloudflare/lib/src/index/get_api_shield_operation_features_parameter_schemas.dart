// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_features_parameter_schemas_parameter_schemas.dart';

class GetApiShieldOperationFeaturesParameterSchemas {
  final pulumi.Input<String> lastUpdated;
  /// An operation schema object containing a response.
  final pulumi.Input<GetApiShieldOperationFeaturesParameterSchemasParameterSchemas> parameterSchemas;

  /// Creates a new [GetApiShieldOperationFeaturesParameterSchemas].
  /// [lastUpdated] Required.
  /// [parameterSchemas] An operation schema object containing a response.
  const GetApiShieldOperationFeaturesParameterSchemas({
    required this.lastUpdated,
    required this.parameterSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'parameterSchemas': pulumi.Input.mapInputValue<GetApiShieldOperationFeaturesParameterSchemasParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationFeaturesParameterSchemas.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesParameterSchemas(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      parameterSchemas: pulumi.Input.fromValue(GetApiShieldOperationFeaturesParameterSchemasParameterSchemas.fromMap((map['parameterSchemas']! as Map).cast<String, dynamic>())),
    );
  }
}
