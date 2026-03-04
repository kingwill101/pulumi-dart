// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_error_errors_item_response.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponse {
  /// The array of errors encountered while processing this operation.
  final pulumi.Input<List<OperationErrorErrorsItemResponse>> errors;

  /// Creates a new [OperationErrorResponse].
  /// [errors] The array of errors encountered while processing this operation.
  OperationErrorResponse({required this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          pulumi.Input.mapInputValue<
            List<OperationErrorErrorsItemResponse>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  OperationErrorErrorsItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OperationErrorResponse.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponse(
      errors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OperationErrorErrorsItemResponse>(
          map['errors']!,
          (value) => OperationErrorErrorsItemResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
