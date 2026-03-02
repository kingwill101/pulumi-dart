// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Column properties for TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse {
  /// Column heading.
  final pulumi.Input<String> header;
  /// Optional. Defines text alignment for all cells in this column.
  final pulumi.Input<String> horizontalAlignment;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse].
  /// [header] Column heading.
  /// [horizontalAlignment] Optional. Defines text alignment for all cells in this column.
  GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse({
    required this.header,
    required this.horizontalAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'horizontalAlignment': horizontalAlignment,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse(
      header: (map['header'] as String).input(),
      horizontalAlignment: (map['horizontalAlignment'] as String).input(),
    );
  }
}

