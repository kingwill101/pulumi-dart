// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message representing a set of files in Cloud Storage.
class GooglePrivacyDlpV2CloudStorageFileSet {
  /// The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  final pulumi.Input<String>? url;

  /// Creates a new [GooglePrivacyDlpV2CloudStorageFileSet].
  /// [url] The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  GooglePrivacyDlpV2CloudStorageFileSet({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory GooglePrivacyDlpV2CloudStorageFileSet.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageFileSet(
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

