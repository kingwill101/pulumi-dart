// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatAddress resources.
class NatAddressState {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final pulumi.Input<bool>? activate;
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
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [ipAddress] The allocated NAT IP address.
  /// [name] Resource ID of the NAT address.
  /// [state] State of the NAT IP address.
  NatAddressState({
    pulumi.Output<bool>? activate,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? state,
  }) :
      activate = pulumi.Input.asOptionalInput<bool>(activate),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'instanceId': ?instanceId,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'state': ?state,
    };
  }

  factory NatAddressState.fromMap(Map<String, dynamic> map) {
    return NatAddressState(
      activate: map['activate'] == null ? null : pulumi.Output.create<bool>(map['activate'] as bool),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

