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
    pulumi.Output<int>? healthMonitor,
    pulumi.Output<int>? l7Policy,
    pulumi.Output<int>? l7Rule,
    pulumi.Output<int>? listener,
    pulumi.Output<int>? loadbalancer,
    pulumi.Output<int>? member,
    pulumi.Output<int>? pool,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
  }) :
      healthMonitor = pulumi.Input.asOptionalInput<int>(healthMonitor),
      l7Policy = pulumi.Input.asOptionalInput<int>(l7Policy),
      l7Rule = pulumi.Input.asOptionalInput<int>(l7Rule),
      listener = pulumi.Input.asOptionalInput<int>(listener),
      loadbalancer = pulumi.Input.asOptionalInput<int>(loadbalancer),
      member = pulumi.Input.asOptionalInput<int>(member),
      pool = pulumi.Input.asOptionalInput<int>(pool),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      healthMonitor: map['healthMonitor'] == null ? null : pulumi.Output.create<int>(map['healthMonitor'] as int),
      l7Policy: map['l7Policy'] == null ? null : pulumi.Output.create<int>(map['l7Policy'] as int),
      l7Rule: map['l7Rule'] == null ? null : pulumi.Output.create<int>(map['l7Rule'] as int),
      listener: map['listener'] == null ? null : pulumi.Output.create<int>(map['listener'] as int),
      loadbalancer: map['loadbalancer'] == null ? null : pulumi.Output.create<int>(map['loadbalancer'] as int),
      member: map['member'] == null ? null : pulumi.Output.create<int>(map['member'] as int),
      pool: map['pool'] == null ? null : pulumi.Output.create<int>(map['pool'] as int),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

