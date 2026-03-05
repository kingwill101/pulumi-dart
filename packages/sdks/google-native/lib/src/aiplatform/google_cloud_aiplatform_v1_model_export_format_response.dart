// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents export format supported by the Model. All formats export to Google Cloud Storage.
class GoogleCloudAiplatformV1ModelExportFormatResponse {
  /// The content of this Model that may be exported.
  final pulumi.Input<List<String>> exportableContents;

  /// Creates a new [GoogleCloudAiplatformV1ModelExportFormatResponse].
  /// [exportableContents] The content of this Model that may be exported.
  GoogleCloudAiplatformV1ModelExportFormatResponse({
    required this.exportableContents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportableContents': exportableContents,
    };
  }

  factory GoogleCloudAiplatformV1ModelExportFormatResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelExportFormatResponse(
      exportableContents: pulumi.Input.fromValue((map['exportableContents'] as List).cast<String>()),
    );
  }
}

