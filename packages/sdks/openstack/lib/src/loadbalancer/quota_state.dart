// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Quota resources.
class QuotaState {
  /// Quota value for health_monitors. Changing
  /// this updates the existing quota. Omitting it sets it to 0.
  final pulumi.Input<int>? healthMonitor;
  /// Quota value for l7_policies. Changing this
  /// updates the existing quota. Omitting it sets it to 0. Available in
  /// **Octavia minor version 2.19**.
  final pulumi.Input<int>? l7Policy;
  /// Quota value for l7_rules. Changing this
  /// updates the existing quota. Omitting it sets it to 0. Available in
  /// **Octavia minor version 2.19**.
  final pulumi.Input<int>? l7Rule;
  /// Quota value for listeners. Changing this updates
  /// the existing quota. Omitting it sets it to 0.
  final pulumi.Input<int>? listener;
  /// Quota value for loadbalancers. Changing this
  /// updates the existing quota. Omitting it sets it to 0.
  final pulumi.Input<int>? loadbalancer;
  /// Quota value for members. Changing this updates
  /// the existing quota. Omitting it sets it to 0.
  final pulumi.Input<int>? member;
  /// Quota value for pools. Changing this updates the
  /// the existing quota. Omitting it sets it to 0.
  final pulumi.Input<int>? pool;
  /// ID of the project to manage quotas. Changing this
  /// creates a new quota.
  final pulumi.Input<String>? projectId;
  /// Region in which to manage quotas. Changing this
  /// creates a new quota. If ommited, the region of the credentials is used.
  final pulumi.Input<String>? region;

  /// Creates a new [QuotaState].
  /// [healthMonitor] Quota value for health_monitors. Changing
  /// [l7Policy] Quota value for l7_policies. Changing this
  /// [l7Rule] Quota value for l7_rules. Changing this
  /// [listener] Quota value for listeners. Changing this updates
  /// [loadbalancer] Quota value for loadbalancers. Changing this
  /// [member] Quota value for members. Changing this updates
  /// [pool] Quota value for pools. Changing this updates the
  /// [projectId] ID of the project to manage quotas. Changing this
  /// [region] Region in which to manage quotas. Changing this
  QuotaState({
    this.healthMonitor,
    this.l7Policy,
    this.l7Rule,
    this.listener,
    this.loadbalancer,
    this.member,
    this.pool,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthMonitor': ?healthMonitor,
      'l7Policy': ?l7Policy,
      'l7Rule': ?l7Rule,
      'listener': ?listener,
      'loadbalancer': ?loadbalancer,
      'member': ?member,
      'pool': ?pool,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory QuotaState.fromMap(Map<String, dynamic> map) {
    return QuotaState(
      healthMonitor: map['healthMonitor'] == null ? null : (map['healthMonitor']! as int).input(),
      l7Policy: map['l7Policy'] == null ? null : (map['l7Policy']! as int).input(),
      l7Rule: map['l7Rule'] == null ? null : (map['l7Rule']! as int).input(),
      listener: map['listener'] == null ? null : (map['listener']! as int).input(),
      loadbalancer: map['loadbalancer'] == null ? null : (map['loadbalancer']! as int).input(),
      member: map['member'] == null ? null : (map['member']! as int).input(),
      pool: map['pool'] == null ? null : (map['pool']! as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

