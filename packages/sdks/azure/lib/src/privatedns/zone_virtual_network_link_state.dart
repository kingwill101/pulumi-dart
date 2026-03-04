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
    this.name,
    this.privateDnsZoneName,
    this.registrationEnabled,
    this.resolutionPolicy,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkId,
  });

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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateDnsZoneName: (() {
        final guardedValue = map['privateDnsZoneName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationEnabled: (() {
        final guardedValue = map['registrationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resolutionPolicy: (() {
        final guardedValue = map['resolutionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkId: (() {
        final guardedValue = map['virtualNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
