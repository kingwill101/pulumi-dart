// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_i_pgroup_cidr_ipgroup_cidrargs_doc}
/// The set of arguments for IPGroupCIDR.
/// {@endtemplate}
/// {@macro pulumi_network_i_pgroup_cidr_ipgroup_cidrargs_doc}
class IPGroupCIDRArgs {
  /// The `CIDR` that should be added to the IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within azure.network.IPGroup using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via this resource then `ignore_changes` should be used in the resource `azure.network.IPGroupCIDR` configuration.
  final pulumi.Input<String> cidr;
  /// The ID of the destination IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  final pulumi.Input<String> ipGroupId;

  /// Creates a new [IPGroupCIDRArgs].
  /// [cidr] The `CIDR` that should be added to the IP Group.
  /// [ipGroupId] The ID of the destination IP Group.
  const IPGroupCIDRArgs({
    required this.cidr,
    required this.ipGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'ipGroupId': ipGroupId,
    };
  }

  factory IPGroupCIDRArgs.fromMap(Map<String, dynamic> map) {
    return IPGroupCIDRArgs(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      ipGroupId: pulumi.Input.fromValue(map['ipGroupId'] as String),
    );
  }
}

