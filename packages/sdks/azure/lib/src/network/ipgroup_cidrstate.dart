// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPGroupCIDR resources.
class IPGroupCIDRState {
  /// The `CIDR` that should be added to the IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within azure.network.IPGroup using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via this resource then `ignoreChanges` should be used in the resource `azure.network.IPGroupCIDR` configuration.
  final pulumi.Input<String>? cidr;
  /// The ID of the destination IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  final pulumi.Input<String>? ipGroupId;

  /// Creates a new [IPGroupCIDRState].
  /// [cidr] The `CIDR` that should be added to the IP Group.
  /// [ipGroupId] The ID of the destination IP Group.
  const IPGroupCIDRState({
    this.cidr,
    this.ipGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ipGroupId': ?ipGroupId,
    };
  }

  factory IPGroupCIDRState.fromMap(Map<String, dynamic> map) {
    return IPGroupCIDRState(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipGroupId: (() { final guardedValue = map['ipGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
