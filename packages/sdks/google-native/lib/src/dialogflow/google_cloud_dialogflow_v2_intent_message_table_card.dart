// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2_intent_message_column_properties.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card_row.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>>? buttons;
  /// Optional. Display properties for the columns in this table.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageColumnProperties>>? columnProperties;
  /// Optional. Image which should be displayed on the card.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? image;
  /// Optional. Rows in this table of data.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageTableCardRow>>? rows;
  /// Optional. Subtitle to the title.
  final pulumi.Input<String>? subtitle;
  /// Title of the card.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCard].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnProperties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessageColumnProperties>, List<Map<String, dynamic>>>(columnProperties, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageColumnProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'rows': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessageTableCardRow>, List<Map<String, dynamic>>>(rows, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageTableCardRow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subtitle': ?subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCard(
      buttons: (() { final guardedValue = map['buttons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButton>(guardedValue, (value) => GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromMap((value as Map).cast<String, dynamic>()))); })(),
      columnProperties: (() { final guardedValue = map['columnProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageColumnProperties>(guardedValue, (value) => GoogleCloudDialogflowV2IntentMessageColumnProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rows: (() { final guardedValue = map['rows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageTableCardRow>(guardedValue, (value) => GoogleCloudDialogflowV2IntentMessageTableCardRow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subtitle: (() { final guardedValue = map['subtitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

