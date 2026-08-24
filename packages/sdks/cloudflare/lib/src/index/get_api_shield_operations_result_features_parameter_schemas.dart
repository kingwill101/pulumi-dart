// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features_parameter_schemas_parameter_schemas.dart';

class GetApiShieldOperationsResultFeaturesParameterSchemas {
  final pulumi.Input<String> lastUpdated;
  /// An operation schema object containing a response.
  final pulumi.Input<GetApiShieldOperationsResultFeaturesParameterSchemasParameterSchemas> parameterSchemas;

  /// Creates a new [GetApiShieldOperationsResultFeaturesParameterSchemas].
  /// [lastUpdated] Required.
  /// [parameterSchemas] An operation schema object containing a response.
  const GetApiShieldOperationsResultFeaturesParameterSchemas({
    required this.lastUpdated,
    required this.parameterSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'parameterSchemas': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeaturesParameterSchemasParameterSchemas, Map<String, dynamic>>(parameterSchemas, (value) => value.toMap()),
    };
  }

  factory GetApiShieldOperationsResultFeaturesParameterSchemas.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesParameterSchemas(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      parameterSchemas: pulumi.Input.fromValue(GetApiShieldOperationsResultFeaturesParameterSchemasParameterSchemas.fromMap((map['parameterSchemas']! as Map).cast<String, dynamic>())),
    );
  }
}
