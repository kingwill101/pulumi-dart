// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPGroup resources.
class IPGroupState {
  /// A list of CIDRs or IP addresses.
  ///
  /// > **Note:** The AzureRM Terraform provider provides cidr support via the standalone resource azure.network.IPGroupCIDR and in-line within this resource using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via the resource `azure.network.IPGroupCIDR` then `ignore_changes` should be used in the ip group configuration.
  final pulumi.Input<List<String>>? cidrs;
  /// A list of ID of Firewall.
  final pulumi.Input<List<String>>? firewallIds;
  /// A list of ID of Firewall Policy`.
  final pulumi.Input<List<String>>? firewallPolicyIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the IP group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IPGroupState].
  /// [cidrs] A list of CIDRs or IP addresses.
  /// [firewallIds] A list of ID of Firewall.
  /// [firewallPolicyIds] A list of ID of Firewall Policy`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IP group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  IPGroupState({
    pulumi.Output<List<String>>? cidrs,
    pulumi.Output<List<String>>? firewallIds,
    pulumi.Output<List<String>>? firewallPolicyIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cidrs = pulumi.Input.asOptionalInput<List<String>>(cidrs),
      firewallIds = pulumi.Input.asOptionalInput<List<String>>(firewallIds),
      firewallPolicyIds = pulumi.Input.asOptionalInput<List<String>>(firewallPolicyIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'firewallIds': ?firewallIds,
      'firewallPolicyIds': ?firewallPolicyIds,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IPGroupState.fromMap(Map<String, dynamic> map) {
    return IPGroupState(
      cidrs: map['cidrs'] == null ? null : pulumi.Output.create<List<String>>((map['cidrs'] as List).cast<String>()),
      firewallIds: map['firewallIds'] == null ? null : pulumi.Output.create<List<String>>((map['firewallIds'] as List).cast<String>()),
      firewallPolicyIds: map['firewallPolicyIds'] == null ? null : pulumi.Output.create<List<String>>((map['firewallPolicyIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

