// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BiReservationPreferredTable {
  /// The ID of the dataset in the above project.
  final pulumi.Input<String>? datasetId;

  /// The assigned project ID of the project.
  final pulumi.Input<String>? projectId;

  /// The ID of the table in the above dataset.
  final pulumi.Input<String>? tableId;

  /// Creates a new [BiReservationPreferredTable].
  /// [datasetId] The ID of the dataset in the above project.
  /// [projectId] The assigned project ID of the project.
  /// [tableId] The ID of the table in the above dataset.
  BiReservationPreferredTable({this.datasetId, this.projectId, this.tableId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': ?tableId,
    };
  }

  factory BiReservationPreferredTable.fromMap(Map<String, dynamic> map) {
    return BiReservationPreferredTable(
      datasetId: (() {
        final guardedValue = map['datasetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableId: (() {
        final guardedValue = map['tableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
