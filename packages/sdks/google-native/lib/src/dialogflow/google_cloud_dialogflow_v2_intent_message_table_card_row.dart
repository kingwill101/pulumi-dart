// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_table_card_cell.dart';

/// Row of TableCard.
class GoogleCloudDialogflowV2IntentMessageTableCardRow {
  /// Optional. List of cells that make up this row.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageTableCardCell>>? cells;
  /// Optional. Whether to add a visual divider after this row.
  final pulumi.Input<bool>? dividerAfter;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardRow].
  /// [cells] Optional. List of cells that make up this row.
  /// [dividerAfter] Optional. Whether to add a visual divider after this row.
  GoogleCloudDialogflowV2IntentMessageTableCardRow({
    this.cells,
    this.dividerAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessageTableCardCell>, List<Map<String, dynamic>>>(cells, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageTableCardCell, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dividerAfter': ?dividerAfter,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardRow.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardRow(
      cells: (() { final guardedValue = map['cells']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageTableCardCell>(guardedValue, (value) => GoogleCloudDialogflowV2IntentMessageTableCardCell.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dividerAfter: (() { final guardedValue = map['dividerAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

