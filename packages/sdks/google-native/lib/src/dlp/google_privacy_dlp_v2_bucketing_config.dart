// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_bucket.dart';

/// Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -&gt; LOW 31-65 -&gt; MEDIUM 66-100 -&gt; HIGH This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
class GooglePrivacyDlpV2BucketingConfig {
  /// Set of buckets. Ranges must be non-overlapping.
  final pulumi.Input<List<GooglePrivacyDlpV2Bucket>>? buckets;

  /// Creates a new [GooglePrivacyDlpV2BucketingConfig].
  /// [buckets] Set of buckets. Ranges must be non-overlapping.
  const GooglePrivacyDlpV2BucketingConfig({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2Bucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Bucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2BucketingConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BucketingConfig(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2Bucket>(guardedValue, (value) => GooglePrivacyDlpV2Bucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

