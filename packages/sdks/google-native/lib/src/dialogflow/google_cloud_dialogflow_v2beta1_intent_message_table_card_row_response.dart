// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_cell_response.dart';

/// Row of TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse {
  /// Optional. List of cells that make up this row.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse>> cells;
  /// Optional. Whether to add a visual divider after this row.
  final pulumi.Input<bool> dividerAfter;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse].
  /// [cells] Optional. List of cells that make up this row.
  /// [dividerAfter] Optional. Whether to add a visual divider after this row.
  const GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse({
    required this.cells,
    required this.dividerAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse>, List<Map<String, dynamic>>>(cells, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dividerAfter': dividerAfter,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse(
      cells: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse>(map['cells']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dividerAfter: pulumi.Input.fromValue(map['dividerAfter'] as bool),
    );
  }
}

