// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for the text.
class GoogleCloudDatalabelingV1beta1TextMetadataResponse {
  /// The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  final pulumi.Input<String> languageCode;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextMetadataResponse].
  /// [languageCode] The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  const GoogleCloudDatalabelingV1beta1TextMetadataResponse({
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextMetadataResponse(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
    );
  }
}

