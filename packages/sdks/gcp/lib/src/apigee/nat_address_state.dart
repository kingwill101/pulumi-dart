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
    this.activate,
    this.instanceId,
    this.ipAddress,
    this.name,
    this.state,
  });

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
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

