// ignore_for_file: unused_element, unnecessary_cast

import 'job_collection_quota.dart';
import 'job_collection_state.dart';
import 'sku.dart';

class JobCollectionProperties {
  /// Gets or sets the job collection quota.
  final JobCollectionQuota? quota;
  /// Gets or sets the SKU.
  final Sku? sku;
  /// Gets or sets the state.
  final JobCollectionState? state;

  /// Creates a new [JobCollectionProperties].
  /// [quota] Gets or sets the job collection quota.
  /// [sku] Gets or sets the SKU.
  /// [state] Gets or sets the state.
  JobCollectionProperties({
    this.quota,
    this.sku,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quota': ?quota == null ? null : quota!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'state': ?state == null ? null : state!.value,
    };
  }

  factory JobCollectionProperties.fromMap(Map<String, dynamic> map) {
    return JobCollectionProperties(
      quota: map['quota'] == null ? null : JobCollectionQuota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : JobCollectionState.fromValue(map['state'] as String),
    );
  }
}

