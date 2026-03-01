// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPGroupCIDR resources.
class IPGroupCIDRState {
  /// The `CIDR` that should be added to the IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  ///
  /// > **Note:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within azure.network.IPGroup using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via this resource then `ignore_changes` should be used in the resource `azure.network.IPGroupCIDR` configuration.
  final pulumi.Input<String>? cidr;
  /// The ID of the destination IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  final pulumi.Input<String>? ipGroupId;

  /// Creates a new [IPGroupCIDRState].
  /// [cidr] The `CIDR` that should be added to the IP Group.
  /// [ipGroupId] The ID of the destination IP Group.
  IPGroupCIDRState({
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? ipGroupId,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      ipGroupId = pulumi.Input.asOptionalInput<String>(ipGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ipGroupId': ?ipGroupId,
    };
  }

  factory IPGroupCIDRState.fromMap(Map<String, dynamic> map) {
    return IPGroupCIDRState(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      ipGroupId: map['ipGroupId'] == null ? null : pulumi.Output.create<String>(map['ipGroupId'] as String),
    );
  }
}

