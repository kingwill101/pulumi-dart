// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operation_filter.dart';

/// {@template pulumi_index_get_api_shield_operation_get_api_shield_operation_args_doc}
/// Arguments for getApiShieldOperation.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_operation_get_api_shield_operation_args_doc}
class GetApiShieldOperationArgs {
  /// Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  final pulumi.Input<List<String>?>? feature;
  final pulumi.Input<GetApiShieldOperationFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? operationId;
  /// When true, includes OpenAPI schemas (both uploaded and learned) for the operation in the response. Due to the conversion overhead, this parameter is only supported on single-operation retrieval.
  final pulumi.Input<bool?>? withSchemas;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldOperationArgs].
  /// [feature] Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  /// [filter] Optional.
  /// [operationId] UUID.
  /// [withSchemas] When true, includes OpenAPI schemas (both uploaded and learned) for the operation in the response. Due to the conversion overhead, this parameter is only supported on single-operation retrieval.
  /// [zoneId] Identifier.
  const GetApiShieldOperationArgs({
    this.feature,
    this.filter,
    this.operationId,
    this.withSchemas,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feature': ?feature,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetApiShieldOperationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'operationId': ?operationId,
      'withSchemas': ?withSchemas,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationArgs(
      feature: (() { final guardedValue = map['feature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetApiShieldOperationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSchemas: (() { final guardedValue = map['withSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
