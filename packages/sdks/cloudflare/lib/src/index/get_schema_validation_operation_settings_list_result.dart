// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSchemaValidationOperationSettingsListResult {
  /// When set, this applies a mitigation action to this operation which supersedes a global schema validation setting just for this operation
  ///
  /// - `"log"` - log request when request does not conform to schema for this operation
  /// - `"block"` - deny access to the site when request does not conform to schema for this operation
  /// - `"none"` - will skip mitigation for this operation
  /// Available values: "log", "block", "none".
  final pulumi.Input<String> mitigationAction;
  /// UUID.
  final pulumi.Input<String> operationId;

  /// Creates a new [GetSchemaValidationOperationSettingsListResult].
  /// [mitigationAction] When set, this applies a mitigation action to this operation which supersedes a global schema validation setting just for this operation
  /// [operationId] UUID.
  const GetSchemaValidationOperationSettingsListResult({
    required this.mitigationAction,
    required this.operationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationAction': mitigationAction,
      'operationId': operationId,
    };
  }

  factory GetSchemaValidationOperationSettingsListResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationOperationSettingsListResult(
      mitigationAction: pulumi.Input.fromValue(map['mitigationAction'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
    );
  }
}
