// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_column_properties.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_row.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>>? buttons;
  /// Optional. Display properties for the columns in this table.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>>? columnProperties;
  /// Optional. Image which should be displayed on the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? image;
  /// Optional. Rows in this table of data.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>>? rows;
  /// Optional. Subtitle to the title.
  final pulumi.Input<String>? subtitle;
  /// Title of the card.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCard].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnProperties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>, List<Map<String, dynamic>>>(columnProperties, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'rows': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>, List<Map<String, dynamic>>>(rows, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCard(
      buttons: map['buttons'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(map['buttons']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromMap((value as Map).cast<String, dynamic>()))).input(),
      columnProperties: map['columnProperties'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>(map['columnProperties']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      rows: map['rows'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>(map['rows']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subtitle: map['subtitle'] == null ? null : (map['subtitle']! as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

