// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_table_table_cell.dart';

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>>? cells;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTableTableRow].
  /// [cells] Cells that make up this row.
  const GoogleCloudDocumentaiV1DocumentPageTableTableRow({
    this.cells,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>, List<Map<String, dynamic>>>(cells, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageTableTableCell, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableRow(
      cells: (() { final guardedValue = map['cells']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableCell>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

