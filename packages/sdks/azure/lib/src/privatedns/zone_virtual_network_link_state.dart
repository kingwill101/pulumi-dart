// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneVirtualNetworkLink resources.
class ZoneVirtualNetworkLinkState {
  /// The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateDnsZoneName;
  /// Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`.
  final pulumi.Input<bool>? registrationEnabled;
  /// Specifies the resolution policy of the Private DNS Zone Virtual Network Link. Possible values are `Default` and `NxDomainRedirect`.
  final pulumi.Input<String>? resolutionPolicy;
  /// Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [ZoneVirtualNetworkLinkState].
  /// [name] The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created.
  /// [privateDnsZoneName] The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created.
  /// [registrationEnabled] Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`.
  /// [resolutionPolicy] Specifies the resolution policy of the Private DNS Zone Virtual Network Link. Possible values are `Default` and `NxDomainRedirect`.
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkId] The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  ZoneVirtualNetworkLinkState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateDnsZoneName,
    pulumi.Output<bool>? registrationEnabled,
    pulumi.Output<String>? resolutionPolicy,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      privateDnsZoneName = pulumi.Input.asOptionalInput<String>(privateDnsZoneName),
      registrationEnabled = pulumi.Input.asOptionalInput<bool>(registrationEnabled),
      resolutionPolicy = pulumi.Input.asOptionalInput<String>(resolutionPolicy),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateDnsZoneName': ?privateDnsZoneName,
      'registrationEnabled': ?registrationEnabled,
      'resolutionPolicy': ?resolutionPolicy,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory ZoneVirtualNetworkLinkState.fromMap(Map<String, dynamic> map) {
    return ZoneVirtualNetworkLinkState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateDnsZoneName: map['privateDnsZoneName'] == null ? null : pulumi.Output.create<String>(map['privateDnsZoneName'] as String),
      registrationEnabled: map['registrationEnabled'] == null ? null : pulumi.Output.create<bool>(map['registrationEnabled'] as bool),
      resolutionPolicy: map['resolutionPolicy'] == null ? null : pulumi.Output.create<String>(map['resolutionPolicy'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

