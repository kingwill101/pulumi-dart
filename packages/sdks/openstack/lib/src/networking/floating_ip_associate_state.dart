// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIpAssociate resources.
class FloatingIpAssociateState {
  final pulumi.Input<String>? fixedIp;
  /// IP Address of an existing floating IP.
  final pulumi.Input<String>? floatingIp;
  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  final pulumi.Input<String>? region;

  /// Creates a new [FloatingIpAssociateState].
  /// [fixedIp] Optional.
  /// [floatingIp] IP Address of an existing floating IP.
  /// [portId] ID of an existing port with at least one IP address to
  /// [region] The region in which to obtain the V2 Networking client.
  FloatingIpAssociateState({
    pulumi.Output<String>? fixedIp,
    pulumi.Output<String>? floatingIp,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? region,
  }) :
      fixedIp = pulumi.Input.asOptionalInput<String>(fixedIp),
      floatingIp = pulumi.Input.asOptionalInput<String>(floatingIp),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIp': ?fixedIp,
      'floatingIp': ?floatingIp,
      'portId': ?portId,
      'region': ?region,
    };
  }

  factory FloatingIpAssociateState.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssociateState(
      fixedIp: map['fixedIp'] == null ? null : pulumi.Output.create<String>(map['fixedIp'] as String),
      floatingIp: map['floatingIp'] == null ? null : pulumi.Output.create<String>(map['floatingIp'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

