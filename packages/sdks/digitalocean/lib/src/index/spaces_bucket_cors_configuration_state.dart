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
  SpacesBucketCorsConfigurationState({
    pulumi.Output<String>? bucket,
    pulumi.Output<List<SpacesBucketCorsConfigurationCorsRule>>? corsRules,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      corsRules = pulumi.Input.asOptionalInput<List<SpacesBucketCorsConfigurationCorsRule>>(corsRules),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<SpacesBucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<SpacesBucketCorsConfigurationCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory SpacesBucketCorsConfigurationState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketCorsConfigurationState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      corsRules: map['corsRules'] == null ? null : pulumi.Output.create<List<SpacesBucketCorsConfigurationCorsRule>>(pulumi.Input.decodeList<SpacesBucketCorsConfigurationCorsRule>(map['corsRules'], (value) => SpacesBucketCorsConfigurationCorsRule.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

