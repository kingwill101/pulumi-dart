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
  JobCollectionProperties({this.quota, this.sku, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quota':
          ?pulumi.Input.mapOptionalInputValue<
            JobCollectionQuota,
            Map<String, dynamic>
          >(quota, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'state': ?pulumi.Input.mapOptionalInputValue<JobCollectionState, String>(
        state,
        (value) => value.wireValue,
      ),
    };
  }

  factory JobCollectionProperties.fromMap(Map<String, dynamic> map) {
    return JobCollectionProperties(
      quota: (() {
        final guardedValue = map['quota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobCollectionQuota.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobCollectionState.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
