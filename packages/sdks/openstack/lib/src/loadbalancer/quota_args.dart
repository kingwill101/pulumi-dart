// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_quota_quota_args_doc}
/// The set of arguments for Quota.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_quota_quota_args_doc}
class QuotaArgs {
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
  final pulumi.Input<String> projectId;
  /// Region in which to manage quotas. Changing this
  /// creates a new quota. If ommited, the region of the credentials is used.
  final pulumi.Input<String>? region;

  /// Creates a new [QuotaArgs].
  /// [healthMonitor] Quota value for health_monitors. Changing
  /// [l7Policy] Quota value for l7_policies. Changing this
  /// [l7Rule] Quota value for l7_rules. Changing this
  /// [listener] Quota value for listeners. Changing this updates
  /// [loadbalancer] Quota value for loadbalancers. Changing this
  /// [member] Quota value for members. Changing this updates
  /// [pool] Quota value for pools. Changing this updates the
  /// [projectId] ID of the project to manage quotas. Changing this
  /// [region] Region in which to manage quotas. Changing this
  const QuotaArgs({
    this.healthMonitor,
    this.l7Policy,
    this.l7Rule,
    this.listener,
    this.loadbalancer,
    this.member,
    this.pool,
    required this.projectId,
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
      'projectId': projectId,
      'region': ?region,
    };
  }

  factory QuotaArgs.fromMap(Map<String, dynamic> map) {
    return QuotaArgs(
      healthMonitor: (() { final guardedValue = map['healthMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      l7Policy: (() { final guardedValue = map['l7Policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      l7Rule: (() { final guardedValue = map['l7Rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      listener: (() { final guardedValue = map['listener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadbalancer: (() { final guardedValue = map['loadbalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

