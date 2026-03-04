// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config.dart';
import 'bare_metal_node_pool_upgrade_policy.dart';

/// {@template pulumi_gkeonprem_v1_bare_metal_node_pool_args_doc}
/// The set of arguments for BareMetalNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_bare_metal_node_pool_args_doc}
class BareMetalNodePoolArgs {
  /// Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> bareMetalClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 63 characters, and valid characters are /a-z-/. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  final pulumi.Input<String>? bareMetalNodePoolId;

  /// The display name for the bare metal node pool.
  final pulumi.Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;

  /// Immutable. The bare metal node pool resource name.
  final pulumi.Input<String>? name;

  /// Node pool configuration.
  final pulumi.Input<BareMetalNodePoolConfig> nodePoolConfig;
  final pulumi.Input<String>? project;

  /// The worker node pool upgrade policy.
  final pulumi.Input<BareMetalNodePoolUpgradePolicy>? upgradePolicy;

  /// Creates a new [BareMetalNodePoolArgs].
  /// [annotations] Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalClusterId] Required.
  /// [bareMetalNodePoolId] The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 63 characters, and valid characters are /a-z-/. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  /// [displayName] The display name for the bare metal node pool.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [location] Optional.
  /// [name] Immutable. The bare metal node pool resource name.
  /// [nodePoolConfig] Node pool configuration.
  /// [project] Optional.
  /// [upgradePolicy] The worker node pool upgrade policy.
  BareMetalNodePoolArgs({
    this.annotations,
    required this.bareMetalClusterId,
    this.bareMetalNodePoolId,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    required this.nodePoolConfig,
    this.project,
    this.upgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bareMetalClusterId': bareMetalClusterId,
      'bareMetalNodePoolId': ?bareMetalNodePoolId,
      'displayName': ?displayName,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'nodePoolConfig':
          pulumi.Input.mapInputValue<
            BareMetalNodePoolConfig,
            Map<String, dynamic>
          >(nodePoolConfig, (value) => value.toMap()),
      'project': ?project,
      'upgradePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BareMetalNodePoolUpgradePolicy,
            Map<String, dynamic>
          >(upgradePolicy, (value) => value.toMap()),
    };
  }

  factory BareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      bareMetalClusterId: pulumi.Input.fromValue(
        map['bareMetalClusterId'] as String,
      ),
      bareMetalNodePoolId: (() {
        final guardedValue = map['bareMetalNodePoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodePoolConfig: pulumi.Input.fromValue(
        BareMetalNodePoolConfig.fromMap(
          (map['nodePoolConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      upgradePolicy: (() {
        final guardedValue = map['upgradePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BareMetalNodePoolUpgradePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
