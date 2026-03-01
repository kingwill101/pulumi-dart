// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_column_properties_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_row_response.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse {
  /// Optional. List of buttons for the card.
  final List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse> buttons;
  /// Optional. Display properties for the columns in this table.
  final List<GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse> columnProperties;
  /// Optional. Image which should be displayed on the card.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;
  /// Optional. Rows in this table of data.
  final List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse> rows;
  /// Optional. Subtitle to the title.
  final String subtitle;
  /// Title of the card.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse({
    required this.buttons,
    required this.columnProperties,
    required this.image,
    required this.rows,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse, Map<String, dynamic>>(buttons, (value) => value.toMap()),
      'columnProperties': pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse, Map<String, dynamic>>(columnProperties, (value) => value.toMap()),
      'image': image.toMap(),
      'rows': pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse, Map<String, dynamic>>(rows, (value) => value.toMap()),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse(
      buttons: pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse>(map['buttons'], (value) => GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse.fromMap((value as Map).cast<String, dynamic>())),
      columnProperties: pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse>(map['columnProperties'], (value) => GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      rows: pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse>(map['rows'], (value) => GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse.fromMap((value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}

