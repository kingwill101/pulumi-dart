// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IAppTableRow {
  final pulumi.Input<List<String>>? rows;

  /// Creates a new [IAppTableRow].
  /// [rows] Optional.
  IAppTableRow({
    this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rows': ?rows,
    };
  }

  factory IAppTableRow.fromMap(Map<String, dynamic> map) {
    return IAppTableRow(
      rows: map['rows'] == null ? null : ((map['rows'] as List).cast<String>()).input(),
    );
  }
}

