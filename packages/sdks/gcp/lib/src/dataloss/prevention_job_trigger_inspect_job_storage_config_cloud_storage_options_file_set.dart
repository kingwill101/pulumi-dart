// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_cloud_storage_options_file_set_regex_file_set.dart';

class PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet {
  /// The regex-filtered set of files to scan.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet>? regexFileSet;
  /// The Cloud Storage url of the file(s) to scan, in the format `gs://&lt;bucket&gt;/&lt;path&gt;`. Trailing wildcard
  /// in the path is allowed.
  /// If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned
  /// non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is
  /// equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`.
  final pulumi.Input<String>? url;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet].
  /// [regexFileSet] The regex-filtered set of files to scan.
  /// [url] The Cloud Storage url of the file(s) to scan, in the format `gs://&lt;bucket&gt;/&lt;path&gt;`. Trailing wildcard
  const PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet({
    this.regexFileSet,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexFileSet': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet, Map<String, dynamic>>(regexFileSet, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet(
      regexFileSet: (() { final guardedValue = map['regexFileSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

