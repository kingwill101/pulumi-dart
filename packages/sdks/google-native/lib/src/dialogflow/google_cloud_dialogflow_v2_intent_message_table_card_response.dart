// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_column_properties_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card_row_response.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCardResponse {
  /// Optional. List of buttons for the card.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>> buttons;
  /// Optional. Display properties for the columns in this table.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse>> columnProperties;
  /// Optional. Image which should be displayed on the card.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImageResponse> image;
  /// Optional. Rows in this table of data.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageTableCardRowResponse>> rows;
  /// Optional. Subtitle to the title.
  final pulumi.Input<String> subtitle;
  /// Title of the card.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardResponse].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2IntentMessageTableCardResponse({
    required this.buttons,
    required this.columnProperties,
    required this.image,
    required this.rows,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnProperties': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse>, List<Map<String, dynamic>>>(columnProperties, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'rows': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageTableCardRowResponse>, List<Map<String, dynamic>>>(rows, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageTableCardRowResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardResponse(
      buttons: (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>(map['buttons'], (value) => GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      columnProperties: (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse>(map['columnProperties'], (value) => GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      rows: (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageTableCardRowResponse>(map['rows'], (value) => GoogleCloudDialogflowV2IntentMessageTableCardRowResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subtitle: (map['subtitle'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

