// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_cloud_storage_regex_file_set_response.dart';

/// Set of files to scan.
class GooglePrivacyDlpV2FileSetResponse {
  /// The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set.
  final pulumi.Input<GooglePrivacyDlpV2CloudStorageRegexFileSetResponse>
  regexFileSet;

  /// The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `regex_file_set` must be set.
  final pulumi.Input<String> url;

  /// Creates a new [GooglePrivacyDlpV2FileSetResponse].
  /// [regexFileSet] The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set.
  /// [url] The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `regex_file_set` must be set.
  GooglePrivacyDlpV2FileSetResponse({
    required this.regexFileSet,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexFileSet':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2CloudStorageRegexFileSetResponse,
            Map<String, dynamic>
          >(regexFileSet, (value) => value.toMap()),
      'url': url,
    };
  }

  factory GooglePrivacyDlpV2FileSetResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FileSetResponse(
      regexFileSet: pulumi.Input.fromValue(
        GooglePrivacyDlpV2CloudStorageRegexFileSetResponse.fromMap(
          (map['regexFileSet']! as Map).cast<String, dynamic>(),
        ),
      ),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
