// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyV2 resources.
class PolicyV2State {
  /// Audit status of the firewall policy
  /// (must be "true" or "false" if provided - defaults to "false").
  /// This status is set to "false" whenever the firewall policy or any of its
  /// rules are changed. Changing this updates the `audited` status of an existing
  /// firewall policy.
  final pulumi.Input<bool>? audited;

  /// A description for the firewall policy. Changing
  /// this updates the `description` of an existing firewall policy.
  final pulumi.Input<String>? description;

  /// A name for the firewall policy. Changing this
  /// updates the `name` of an existing firewall policy.
  final pulumi.Input<String>? name;

  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another project. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? projectId;

  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? region;

  /// An array of one or more firewall rules that comprise
  /// the policy. Changing this results in adding/removing rules from the
  /// existing firewall policy.
  final pulumi.Input<List<String>>? rules;

  /// Sharing status of the firewall policy (must be "true"
  /// or "false" if provided). If this is "true" the policy is visible to, and
  /// can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall policy. Only administrative users
  /// can specify if the policy should be shared.
  final pulumi.Input<bool>? shared;

  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another tenant. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [PolicyV2State].
  /// [audited] Audit status of the firewall policy
  /// [description] A description for the firewall policy. Changing
  /// [name] A name for the firewall policy. Changing this
  /// [projectId] This argument conflicts and is interchangeable
  /// [region] The region in which to obtain the v2 networking client.
  /// [rules] An array of one or more firewall rules that comprise
  /// [shared] Sharing status of the firewall policy (must be "true"
  /// [tenantId] This argument conflicts and is interchangeable
  PolicyV2State({
    this.audited,
    this.description,
    this.name,
    this.projectId,
    this.region,
    this.rules,
    this.shared,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audited': ?audited,
      'description': ?description,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'rules': ?rules,
      'shared': ?shared,
      'tenantId': ?tenantId,
    };
  }

  factory PolicyV2State.fromMap(Map<String, dynamic> map) {
    return PolicyV2State(
      audited: (() {
        final guardedValue = map['audited'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      shared: (() {
        final guardedValue = map['shared'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
