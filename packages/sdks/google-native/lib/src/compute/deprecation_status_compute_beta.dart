// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deprecation_status_state_compute_beta.dart';
import 'rollout_policy_compute_beta.dart';

/// Deprecation status for a public resource.
class DeprecationStatusComputeBeta {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String>? deleted;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String>? deprecated;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String>? obsolete;

  /// The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final pulumi.Input<String>? replacement;

  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final pulumi.Input<DeprecationStatusStateComputeBeta>? state;

  /// The rollout policy for this deprecation. This policy is only enforced by image family views. The rollout policy restricts the zones where the associated resource is considered in a deprecated state. When the rollout policy does not include the user specified zone, or if the zone is rolled out, the associated resource is considered in a deprecated state. The rollout policy for this deprecation is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  final pulumi.Input<RolloutPolicyComputeBeta>? stateOverride;

  /// Creates a new [DeprecationStatusComputeBeta].
  /// [deleted] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [deprecated] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [obsolete] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  /// [replacement] The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  /// [state] The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  /// [stateOverride] The rollout policy for this deprecation. This policy is only enforced by image family views. The rollout policy restricts the zones where the associated resource is considered in a deprecated state. When the rollout policy does not include the user specified zone, or if the zone is rolled out, the associated resource is considered in a deprecated state. The rollout policy for this deprecation is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  DeprecationStatusComputeBeta({
    this.deleted,
    this.deprecated,
    this.obsolete,
    this.replacement,
    this.state,
    this.stateOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': ?deleted,
      'deprecated': ?deprecated,
      'obsolete': ?obsolete,
      'replacement': ?replacement,
      'state':
          ?pulumi.Input.mapOptionalInputValue<
            DeprecationStatusStateComputeBeta,
            String
          >(state, (value) => value.wireValue),
      'stateOverride':
          ?pulumi.Input.mapOptionalInputValue<
            RolloutPolicyComputeBeta,
            Map<String, dynamic>
          >(stateOverride, (value) => value.toMap()),
    };
  }

  factory DeprecationStatusComputeBeta.fromMap(Map<String, dynamic> map) {
    return DeprecationStatusComputeBeta(
      deleted: (() {
        final guardedValue = map['deleted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deprecated: (() {
        final guardedValue = map['deprecated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      obsolete: (() {
        final guardedValue = map['obsolete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replacement: (() {
        final guardedValue = map['replacement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeprecationStatusStateComputeBeta.fromValue(guardedValue as String),
        );
      })(),
      stateOverride: (() {
        final guardedValue = map['stateOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RolloutPolicyComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
