// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatAddress resources.
class NatAddressState {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final pulumi.Input<bool>? activate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String>? instanceId;
  /// The allocated NAT IP address.
  final pulumi.Input<String>? ipAddress;
  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;
  /// State of the NAT IP address.
  final pulumi.Input<String>? state;

  /// Creates a new [NatAddressState].
  /// [activate] Flag that specifies whether the reserved NAT address should be activate.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [ipAddress] The allocated NAT IP address.
  /// [name] Resource ID of the NAT address.
  /// [state] State of the NAT IP address.
  const NatAddressState({
    this.activate,
    this.deletionPolicy,
    this.instanceId,
    this.ipAddress,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'deletionPolicy': ?deletionPolicy,
      'instanceId': ?instanceId,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'state': ?state,
    };
  }

  factory NatAddressState.fromMap(Map<String, dynamic> map) {
    return NatAddressState(
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
