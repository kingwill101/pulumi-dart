// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_config.dart';

/// Describes the virtual machines used to build and validate images
class ImageTemplateVmProfile {
  /// Size of the OS disk in GB. Omit or specify 0 to use Azure's default OS disk size.
  final pulumi.Input<int?>? osDiskSizeGB;
  /// Optional array of resource IDs of user assigned managed identities to be configured on the build VM and validation VM. This may include the identity of the image template.
  final pulumi.Input<List<String>?>? userAssignedIdentities;
  /// Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images).
  final pulumi.Input<String?>? vmSize;
  /// Optional configuration of the virtual network to use to deploy the build VM and validation VM in. Omit if no specific virtual network needs to be used.
  final pulumi.Input<VirtualNetworkConfig?>? vnetConfig;

  /// Creates a new [ImageTemplateVmProfile].
  /// [osDiskSizeGB] Size of the OS disk in GB. Omit or specify 0 to use Azure's default OS disk size.
  /// [userAssignedIdentities] Optional array of resource IDs of user assigned managed identities to be configured on the build VM and validation VM. This may include the identity of the image template.
  /// [vmSize] Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images).
  /// [vnetConfig] Optional configuration of the virtual network to use to deploy the build VM and validation VM in. Omit if no specific virtual network needs to be used.
  ImageTemplateVmProfile({
    pulumi.Input<int?>? osDiskSizeGB,
    this.userAssignedIdentities,
    pulumi.Input<String?>? vmSize,
    this.vnetConfig,
  }) : osDiskSizeGB = osDiskSizeGB ?? pulumi.Input.fromValue(0), vmSize = vmSize ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDiskSizeGB': ?osDiskSizeGB,
      'userAssignedIdentities': ?userAssignedIdentities,
      'vmSize': ?vmSize,
      'vnetConfig': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkConfig, Map<String, dynamic>>(vnetConfig, (value) => value.toMap()),
    };
  }

  factory ImageTemplateVmProfile.fromMap(Map<String, dynamic> map) {
    return ImageTemplateVmProfile(
      osDiskSizeGB: (() { final guardedValue = map['osDiskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetConfig: (() { final guardedValue = map['vnetConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
