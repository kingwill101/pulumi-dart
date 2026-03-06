// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_reference_response.dart';

class SnapshotDefinitionResponse {
  /// [Required] Reference describing the ID of the table that was snapshot.
  final pulumi.Input<TableReferenceResponse> baseTableReference;
  /// [Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
  final pulumi.Input<String> snapshotTime;

  /// Creates a new [SnapshotDefinitionResponse].
  /// [baseTableReference] [Required] Reference describing the ID of the table that was snapshot.
  /// [snapshotTime] [Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
  const SnapshotDefinitionResponse({
    required this.baseTableReference,
    required this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTableReference': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(baseTableReference, (value) => value.toMap()),
      'snapshotTime': snapshotTime,
    };
  }

  factory SnapshotDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotDefinitionResponse(
      baseTableReference: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['baseTableReference']! as Map).cast<String, dynamic>())),
      snapshotTime: pulumi.Input.fromValue(map['snapshotTime'] as String),
    );
  }
}

