// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_error_errors_item_response_deploymentmanager_v2.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponseDeploymentmanagerV2 {
  /// The array of errors encountered while processing this operation.
  final pulumi.Input<List<OperationErrorErrorsItemResponseDeploymentmanagerV2>> errors;

  /// Creates a new [OperationErrorResponseDeploymentmanagerV2].
  /// [errors] The array of errors encountered while processing this operation.
  OperationErrorResponseDeploymentmanagerV2({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.mapInputValue<List<OperationErrorErrorsItemResponseDeploymentmanagerV2>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<OperationErrorErrorsItemResponseDeploymentmanagerV2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OperationErrorResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponseDeploymentmanagerV2(
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<OperationErrorErrorsItemResponseDeploymentmanagerV2>(map['errors']!, (value) => OperationErrorErrorsItemResponseDeploymentmanagerV2.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

