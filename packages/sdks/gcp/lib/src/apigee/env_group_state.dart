// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvGroup resources.
class EnvGroupState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Hostnames of the environment group.
  final pulumi.Input<List<String>?>? hostnames;
  /// The resource ID of the environment group.
  final pulumi.Input<String?>? name;
  /// The Apigee Organization associated with the Apigee environment group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String?>? orgId;

  /// Creates a new [EnvGroupState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [hostnames] Hostnames of the environment group.
  /// [name] The resource ID of the environment group.
  /// [orgId] The Apigee Organization associated with the Apigee environment group,
  const EnvGroupState({
    this.deletionPolicy,
    this.hostnames,
    this.name,
    this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'hostnames': ?hostnames,
      'name': ?name,
      'orgId': ?orgId,
    };
  }

  factory EnvGroupState.fromMap(Map<String, dynamic> map) {
    return EnvGroupState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
