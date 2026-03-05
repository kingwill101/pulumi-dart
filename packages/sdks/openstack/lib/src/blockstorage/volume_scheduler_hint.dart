// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeSchedulerHint {
  /// Arbitrary key/value pairs of additional
  /// properties to pass to the scheduler.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// The volume should be scheduled on a
  /// different host from the set of volumes specified in the list provided.
  final pulumi.Input<List<String>>? differentHosts;
  /// An instance UUID. The volume should be
  /// scheduled on the same host as the instance.
  final pulumi.Input<String>? localToInstance;
  /// A conditional query that a back-end must pass in
  /// order to host a volume. The query must use the `JsonFilter` syntax
  /// which is described
  /// [here](https://docs.openstack.org/cinder/latest/configuration/block-storage/scheduler-filters.html#jsonfilter).
  /// At this time, only simple queries are supported. Compound queries using
  /// `and`, `or`, or `not` are not supported. An example of a simple query is:
  ///
  /// ```
  /// [“=”, “$backend_id”, “rbd:vol@ceph#cloud”]
  /// ```
  final pulumi.Input<String>? query;
  /// A list of volume UUIDs. The volume should be
  /// scheduled on the same host as another volume specified in the list provided.
  final pulumi.Input<List<String>>? sameHosts;

  /// Creates a new [VolumeSchedulerHint].
  /// [additionalProperties] Arbitrary key/value pairs of additional
  /// [differentHosts] The volume should be scheduled on a
  /// [localToInstance] An instance UUID. The volume should be
  /// [query] A conditional query that a back-end must pass in
  /// [sameHosts] A list of volume UUIDs. The volume should be
  VolumeSchedulerHint({
    this.additionalProperties,
    this.differentHosts,
    this.localToInstance,
    this.query,
    this.sameHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'differentHosts': ?differentHosts,
      'localToInstance': ?localToInstance,
      'query': ?query,
      'sameHosts': ?sameHosts,
    };
  }

  factory VolumeSchedulerHint.fromMap(Map<String, dynamic> map) {
    return VolumeSchedulerHint(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      differentHosts: (() { final guardedValue = map['differentHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localToInstance: (() { final guardedValue = map['localToInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sameHosts: (() { final guardedValue = map['sameHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

