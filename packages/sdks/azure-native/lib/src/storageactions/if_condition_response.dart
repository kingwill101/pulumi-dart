// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_operation_response.dart';

/// The if block of storage task operation
class IfConditionResponse {
  /// Condition predicate to evaluate each object. See https://aka.ms/storagetaskconditions for valid properties and operators.
  final pulumi.Input<String> condition;

  /// List of operations to execute when the condition predicate satisfies.
  final pulumi.Input<List<StorageTaskOperationResponse>> operations;

  /// Creates a new [IfConditionResponse].
  /// [condition] Condition predicate to evaluate each object. See https://aka.ms/storagetaskconditions for valid properties and operators.
  /// [operations] List of operations to execute when the condition predicate satisfies.
  IfConditionResponse({required this.condition, required this.operations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'operations':
          pulumi.Input.mapInputValue<
            List<StorageTaskOperationResponse>,
            List<Map<String, dynamic>>
          >(
            operations,
            (value) =>
                pulumi.Input.encodeList<
                  StorageTaskOperationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory IfConditionResponse.fromMap(Map<String, dynamic> map) {
    return IfConditionResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      operations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<StorageTaskOperationResponse>(
          map['operations']!,
          (value) => StorageTaskOperationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
