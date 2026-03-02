// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_column_properties_horizontal_alignment.dart';

/// Column properties for TableCard.
class GoogleCloudDialogflowV2IntentMessageColumnProperties {
  /// Column heading.
  final pulumi.Input<String> header;
  /// Optional. Defines text alignment for all cells in this column.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment>? horizontalAlignment;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageColumnProperties].
  /// [header] Column heading.
  /// [horizontalAlignment] Optional. Defines text alignment for all cells in this column.
  GoogleCloudDialogflowV2IntentMessageColumnProperties({
    required this.header,
    this.horizontalAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'horizontalAlignment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment, String>(horizontalAlignment, (value) => value.value),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageColumnProperties.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageColumnProperties(
      header: (map['header'] as String).input(),
      horizontalAlignment: map['horizontalAlignment'] == null ? null : (GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment.fromValue(map['horizontalAlignment']! as String)).input(),
    );
  }
}

