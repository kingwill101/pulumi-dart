// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_column_properties_horizontal_alignment.dart';

/// Column properties for TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties {
  /// Column heading.
  final String header;
  /// Optional. Defines text alignment for all cells in this column.
  final GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment? horizontalAlignment;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageColumnProperties].
  /// [header] Column heading.
  /// [horizontalAlignment] Optional. Defines text alignment for all cells in this column.
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties({
    required this.header,
    this.horizontalAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'horizontalAlignment': ?horizontalAlignment == null ? null : horizontalAlignment!.value,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      header: map['header'] as String,
      horizontalAlignment: map['horizontalAlignment'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment.fromValue(map['horizontalAlignment'] as String),
    );
  }
}

