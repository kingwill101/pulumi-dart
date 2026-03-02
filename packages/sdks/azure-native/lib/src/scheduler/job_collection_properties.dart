// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_collection_quota.dart';
import 'job_collection_state.dart';
import 'sku.dart';

class JobCollectionProperties {
  /// Gets or sets the job collection quota.
  final pulumi.Input<JobCollectionQuota>? quota;
  /// Gets or sets the SKU.
  final pulumi.Input<Sku>? sku;
  /// Gets or sets the state.
  final pulumi.Input<JobCollectionState>? state;

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
      'quota': ?pulumi.Input.mapOptionalInputValue<JobCollectionQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<JobCollectionState, String>(state, (value) => value.value),
    };
  }

  factory JobCollectionProperties.fromMap(Map<String, dynamic> map) {
    return JobCollectionProperties(
      quota: map['quota'] == null ? null : (JobCollectionQuota.fromMap((map['quota']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (JobCollectionState.fromValue(map['state']! as String)).input(),
    );
  }
}

