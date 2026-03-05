// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for the text.
class GoogleCloudDatalabelingV1beta1TextMetadata {
  /// The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  final pulumi.Input<String>? languageCode;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextMetadata].
  /// [languageCode] The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  GoogleCloudDatalabelingV1beta1TextMetadata({
    this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': ?languageCode,
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextMetadata(
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

