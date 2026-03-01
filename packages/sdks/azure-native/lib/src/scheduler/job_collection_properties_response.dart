// ignore_for_file: unused_element, unnecessary_cast

import 'job_collection_quota_response.dart';
import 'sku_response.dart';

class JobCollectionPropertiesResponse {
  /// Gets or sets the job collection quota.
  final JobCollectionQuotaResponse? quota;
  /// Gets or sets the SKU.
  final SkuResponse? sku;
  /// Gets or sets the state.
  final String? state;

  /// Creates a new [JobCollectionPropertiesResponse].
  /// [quota] Gets or sets the job collection quota.
  /// [sku] Gets or sets the SKU.
  /// [state] Gets or sets the state.
  JobCollectionPropertiesResponse({
    this.quota,
    this.sku,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quota': ?quota == null ? null : quota!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'state': ?state,
    };
  }

  factory JobCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobCollectionPropertiesResponse(
      quota: map['quota'] == null ? null : JobCollectionQuotaResponse.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

