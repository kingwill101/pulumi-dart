// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ips_get_public_ips_args_doc}
/// Arguments for getPublicIPs.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ips_get_public_ips_args_doc}
class GetPublicIPsArgs {
  /// The Allocation Type for the Public IP Address. Possible values include `Static` or `Dynamic`.
  final pulumi.Input<String>? allocationType;
  /// Filter to include IP Addresses which are attached to a device, such as a VM/LB (`Attached`) or unattached (`Unattached`).
  final pulumi.Input<String>? attachmentStatus;
  /// A prefix match used for the IP Addresses `name` field, case sensitive.
  final pulumi.Input<String>? namePrefix;
  /// Specifies the name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPsArgs].
  /// [allocationType] The Allocation Type for the Public IP Address. Possible values include `Static` or `Dynamic`.
  /// [attachmentStatus] Filter to include IP Addresses which are attached to a device, such as a VM/LB (`Attached`) or unattached (`Unattached`).
  /// [namePrefix] A prefix match used for the IP Addresses `name` field, case sensitive.
  /// [resourceGroupName] Specifies the name of the resource group.
  GetPublicIPsArgs({
    this.allocationType,
    this.attachmentStatus,
    this.namePrefix,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationType': ?allocationType,
      'attachmentStatus': ?attachmentStatus,
      'namePrefix': ?namePrefix,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPsArgs(
      allocationType: (() { final guardedValue = map['allocationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentStatus: (() { final guardedValue = map['attachmentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

