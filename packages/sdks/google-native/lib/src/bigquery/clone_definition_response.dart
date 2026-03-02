// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_reference_response.dart';

class CloneDefinitionResponse {
  /// [Required] Reference describing the ID of the table that was cloned.
  final pulumi.Input<TableReferenceResponse> baseTableReference;
  /// [Required] The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format.
  final pulumi.Input<String> cloneTime;

  /// Creates a new [CloneDefinitionResponse].
  /// [baseTableReference] [Required] Reference describing the ID of the table that was cloned.
  /// [cloneTime] [Required] The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format.
  CloneDefinitionResponse({
    required this.baseTableReference,
    required this.cloneTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTableReference': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(baseTableReference, (value) => value.toMap()),
      'cloneTime': cloneTime,
    };
  }

  factory CloneDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CloneDefinitionResponse(
      baseTableReference: (TableReferenceResponse.fromMap((map['baseTableReference'] as Map).cast<String, dynamic>())).input(),
      cloneTime: (map['cloneTime'] as String).input(),
    );
  }
}

