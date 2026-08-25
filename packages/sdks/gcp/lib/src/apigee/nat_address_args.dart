// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_nat_address_nat_address_args_doc}
/// The set of arguments for NatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_nat_address_nat_address_args_doc}
class NatAddressArgs {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final pulumi.Input<bool?>? activate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String> instanceId;
  /// Resource ID of the NAT address.
  final pulumi.Input<String?>? name;

  /// Creates a new [NatAddressArgs].
  /// [activate] Flag that specifies whether the reserved NAT address should be activate.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [name] Resource ID of the NAT address.
  const NatAddressArgs({
    this.activate,
    this.deletionPolicy,
    required this.instanceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'deletionPolicy': ?deletionPolicy,
      'instanceId': instanceId,
      'name': ?name,
    };
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
