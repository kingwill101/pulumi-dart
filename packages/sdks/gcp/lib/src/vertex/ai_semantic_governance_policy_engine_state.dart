// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiSemanticGovernancePolicyEngine resources.
class AiSemanticGovernancePolicyEngineState {
  /// The time the SemanticGovernancePolicyEngine was created, in RFC3339
  /// UTC "Zulu" format.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The IP address allocated for the SGPE's managed PSC endpoint.
  final pulumi.Input<String>? ipAddress;
  /// The resource name of the SemanticGovernancePolicyEngine, in the form
  /// 'projects/{project}/locations/{region}/semanticGovernancePolicyEngine'.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Private Service Connect forwarding rule URI for the SGPE's
  /// managed endpoint.
  final pulumi.Input<String>? pscForwardingRule;
  /// The Private Service Connect service attachment URI for the SGPE's
  /// managed endpoint.
  final pulumi.Input<String>? pscServiceAttachment;
  /// The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
  final pulumi.Input<String>? region;
  /// The current state of the SemanticGovernancePolicyEngine. One of:
  /// STATE_UNSPECIFIED, PROVISIONING, ACTIVE, FAILED, DEPROVISIONING,
  /// INACTIVE. `FAILED` indicates provisioning did not succeed; recover by
  /// destroying the resource (deprovision) or re-applying (re-provision).
  final pulumi.Input<String>? state;
  /// The time the SemanticGovernancePolicyEngine was last updated, in
  /// RFC3339 UTC "Zulu" format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiSemanticGovernancePolicyEngineState].
  /// [createTime] The time the SemanticGovernancePolicyEngine was created, in RFC3339
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ipAddress] The IP address allocated for the SGPE's managed PSC endpoint.
  /// [name] The resource name of the SemanticGovernancePolicyEngine, in the form
  /// [project] The ID of the project in which the resource belongs.
  /// [pscForwardingRule] The Private Service Connect forwarding rule URI for the SGPE's
  /// [pscServiceAttachment] The Private Service Connect service attachment URI for the SGPE's
  /// [region] The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
  /// [state] The current state of the SemanticGovernancePolicyEngine. One of:
  /// [updateTime] The time the SemanticGovernancePolicyEngine was last updated, in
  const AiSemanticGovernancePolicyEngineState({
    this.createTime,
    this.deletionPolicy,
    this.ipAddress,
    this.name,
    this.project,
    this.pscForwardingRule,
    this.pscServiceAttachment,
    this.region,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'project': ?project,
      'pscForwardingRule': ?pscForwardingRule,
      'pscServiceAttachment': ?pscServiceAttachment,
      'region': ?region,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AiSemanticGovernancePolicyEngineState.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyEngineState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscForwardingRule: (() { final guardedValue = map['pscForwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscServiceAttachment: (() { final guardedValue = map['pscServiceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
