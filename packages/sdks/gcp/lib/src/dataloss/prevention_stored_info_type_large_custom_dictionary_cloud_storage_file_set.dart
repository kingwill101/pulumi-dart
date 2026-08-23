// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet {
  /// The url, in the format `gs://&lt;bucket&gt;/&lt;path&gt;`. Trailing wildcard in the path is allowed.
  final pulumi.Input<String> url;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet].
  /// [url] The url, in the format `gs://&lt;bucket&gt;/&lt;path&gt;`. Trailing wildcard in the path is allowed.
  const PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
