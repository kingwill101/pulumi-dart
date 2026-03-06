// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_cors_configuration_cors_rule.dart';

/// Input properties used for looking up and filtering SpacesBucketCorsConfiguration resources.
class SpacesBucketCorsConfigurationState {
  /// The name of the bucket to which to apply the CORS configuration.
  final pulumi.Input<String>? bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final pulumi.Input<List<SpacesBucketCorsConfigurationCorsRule>>? corsRules;
  /// The region where the bucket resides.
  final pulumi.Input<String>? region;

  /// Creates a new [SpacesBucketCorsConfigurationState].
  /// [bucket] The name of the bucket to which to apply the CORS configuration.
  /// [corsRules] Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  /// [region] The region where the bucket resides.
  const SpacesBucketCorsConfigurationState({
    this.bucket,
    this.corsRules,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<SpacesBucketCorsConfigurationCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory SpacesBucketCorsConfigurationState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketCorsConfigurationState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpacesBucketCorsConfigurationCorsRule>(guardedValue, (value) => SpacesBucketCorsConfigurationCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

