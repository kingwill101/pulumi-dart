// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_details_response.dart';

/// Result data returned by listRedisEnterpriseSkusForScaling.
class ListRedisEnterpriseSkusForScalingResult {
  /// List of SKUS available to scale up or scale down.
  final List<SkuDetailsResponse>? skus;

  /// Creates a new [ListRedisEnterpriseSkusForScalingResult].
  /// [skus] List of SKUS available to scale up or scale down.
  ListRedisEnterpriseSkusForScalingResult({
    this.skus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skus': ?skus == null ? null : pulumi.Input.encodeList<SkuDetailsResponse, Map<String, dynamic>>(skus!, (value) => value.toMap()),
    };
  }

  factory ListRedisEnterpriseSkusForScalingResult.fromMap(Map<String, dynamic> map) {
    return ListRedisEnterpriseSkusForScalingResult(
      skus: map['skus'] == null ? null : pulumi.Input.decodeList<SkuDetailsResponse>(map['skus']!, (value) => SkuDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

