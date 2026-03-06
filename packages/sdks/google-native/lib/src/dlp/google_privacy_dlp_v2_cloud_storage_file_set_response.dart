// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message representing a set of files in Cloud Storage.
class GooglePrivacyDlpV2CloudStorageFileSetResponse {
  /// The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  final pulumi.Input<String> url;

  /// Creates a new [GooglePrivacyDlpV2CloudStorageFileSetResponse].
  /// [url] The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  const GooglePrivacyDlpV2CloudStorageFileSetResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory GooglePrivacyDlpV2CloudStorageFileSetResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageFileSetResponse(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

