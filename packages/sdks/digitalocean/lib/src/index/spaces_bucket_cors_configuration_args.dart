// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_cors_configuration_cors_rule.dart';

/// {@template pulumi_index_spaces_bucket_cors_configuration_spaces_bucket_cors_configuration_args_doc}
/// The set of arguments for SpacesBucketCorsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_bucket_cors_configuration_spaces_bucket_cors_configuration_args_doc}
class SpacesBucketCorsConfigurationArgs {
  /// The name of the bucket to which to apply the CORS configuration.
  final pulumi.Input<String> bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  final pulumi.Input<List<SpacesBucketCorsConfigurationCorsRule>> corsRules;
  /// The region where the bucket resides.
  final pulumi.Input<String> region;

  /// Creates a new [SpacesBucketCorsConfigurationArgs].
  /// [bucket] The name of the bucket to which to apply the CORS configuration.
  /// [corsRules] Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  /// [region] The region where the bucket resides.
  const SpacesBucketCorsConfigurationArgs({
    required this.bucket,
    required this.corsRules,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'corsRules': pulumi.Input.mapInputValue<List<SpacesBucketCorsConfigurationCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<SpacesBucketCorsConfigurationCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': region,
    };
  }

  factory SpacesBucketCorsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketCorsConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      corsRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SpacesBucketCorsConfigurationCorsRule>(map['corsRules']!, (value) => SpacesBucketCorsConfigurationCorsRule.fromMap((value as Map).cast<String, dynamic>()))),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
