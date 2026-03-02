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
      audited: map['audited'] == null ? null : (map['audited'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rules: map['rules'] == null ? null : ((map['rules'] as List).cast<String>()).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

