// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IPGroup resources.
class IPGroupState {
  /// A list of CIDRs or IP addresses.
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides cidr support via the standalone resource azure.network.IPGroupCIDR and in-line within this resource using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via the resource `azure.network.IPGroupCIDR` then `ignore_changes` should be used in the ip group configuration.
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
    this.cidrs,
    this.firewallIds,
    this.firewallPolicyIds,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

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
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallIds: (() { final guardedValue = map['firewallIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallPolicyIds: (() { final guardedValue = map['firewallPolicyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

