// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceSchedulerHint {
  /// Arbitrary key/value pairs of additional
  /// properties to pass to the scheduler.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// An IP Address in CIDR form. The instance
  /// will be placed on a compute node that is in the same subnet.
  final pulumi.Input<String>? buildNearHostIp;
  /// The names of cells where not to build the instance.
  final pulumi.Input<List<String>>? differentCells;
  /// A list of instance UUIDs. The instance will
  /// be scheduled on a different host than all other instances.
  final pulumi.Input<List<String>>? differentHosts;
  /// A UUID of a Server Group. The instance will be placed
  /// into that group. See reference
  /// for details on managing servergroup resources
  final pulumi.Input<String>? group;
  /// A conditional query that a compute node must pass in
  /// order to host an instance. The query must use the `JsonFilter` syntax
  /// which is described
  /// [here](https://docs.openstack.org/nova/latest/admin/configuration/schedulers.html#jsonfilter).
  /// At this time, only simple queries are supported. Compound queries using
  /// `and`, `or`, or `not` are not supported. An example of a simple query is:
  ///
  /// ```
  /// [">=", "$free_ram_mb", "1024"]
  /// ```
  final pulumi.Input<List<String>>? queries;
  /// A list of instance UUIDs. The instance will be
  /// scheduled on the same host of those specified.
  final pulumi.Input<List<String>>? sameHosts;
  /// The name of a cell to host the instance.
  final pulumi.Input<String>? targetCell;

  /// Creates a new [InstanceSchedulerHint].
  /// [additionalProperties] Arbitrary key/value pairs of additional
  /// [buildNearHostIp] An IP Address in CIDR form. The instance
  /// [differentCells] The names of cells where not to build the instance.
  /// [differentHosts] A list of instance UUIDs. The instance will
  /// [group] A UUID of a Server Group. The instance will be placed
  /// [queries] A conditional query that a compute node must pass in
  /// [sameHosts] A list of instance UUIDs. The instance will be
  /// [targetCell] The name of a cell to host the instance.
  InstanceSchedulerHint({
    this.additionalProperties,
    this.buildNearHostIp,
    this.differentCells,
    this.differentHosts,
    this.group,
    this.queries,
    this.sameHosts,
    this.targetCell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'buildNearHostIp': ?buildNearHostIp,
      'differentCells': ?differentCells,
      'differentHosts': ?differentHosts,
      'group': ?group,
      'queries': ?queries,
      'sameHosts': ?sameHosts,
      'targetCell': ?targetCell,
    };
  }

  factory InstanceSchedulerHint.fromMap(Map<String, dynamic> map) {
    return InstanceSchedulerHint(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      buildNearHostIp: map['buildNearHostIp'] == null ? null : (map['buildNearHostIp'] as String).input(),
      differentCells: map['differentCells'] == null ? null : ((map['differentCells'] as List).cast<String>()).input(),
      differentHosts: map['differentHosts'] == null ? null : ((map['differentHosts'] as List).cast<String>()).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      queries: map['queries'] == null ? null : ((map['queries'] as List).cast<String>()).input(),
      sameHosts: map['sameHosts'] == null ? null : ((map['sameHosts'] as List).cast<String>()).input(),
      targetCell: map['targetCell'] == null ? null : (map['targetCell'] as String).input(),
    );
  }
}

