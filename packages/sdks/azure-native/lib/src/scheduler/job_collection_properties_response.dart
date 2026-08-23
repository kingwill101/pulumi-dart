// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_collection_quota_response.dart';
import 'sku_response.dart';

class JobCollectionPropertiesResponse {
  /// Gets or sets the job collection quota.
  final pulumi.Input<JobCollectionQuotaResponse>? quota;
  /// Gets or sets the SKU.
  final pulumi.Input<SkuResponse>? sku;
  /// Gets or sets the state.
  final pulumi.Input<String>? state;

  /// Creates a new [JobCollectionPropertiesResponse].
  /// [quota] Gets or sets the job collection quota.
  /// [sku] Gets or sets the SKU.
  /// [state] Gets or sets the state.
  const JobCollectionPropertiesResponse({
    this.quota,
    this.sku,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quota': ?pulumi.Input.mapOptionalInputValue<JobCollectionQuotaResponse, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory JobCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobCollectionPropertiesResponse(
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobCollectionQuotaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
