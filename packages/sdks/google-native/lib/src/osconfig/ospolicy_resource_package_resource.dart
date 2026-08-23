// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_package_resource_apt.dart';
import 'ospolicy_resource_package_resource_deb.dart';
import 'ospolicy_resource_package_resource_desired_state.dart';
import 'ospolicy_resource_package_resource_goo_get.dart';
import 'ospolicy_resource_package_resource_msi.dart';
import 'ospolicy_resource_package_resource_rpm.dart';
import 'ospolicy_resource_package_resource_yum.dart';
import 'ospolicy_resource_package_resource_zypper.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResource {
  /// A package managed by Apt.
  final pulumi.Input<OSPolicyResourcePackageResourceAPT>? apt;
  /// A deb package file.
  final pulumi.Input<OSPolicyResourcePackageResourceDeb>? deb;
  /// The desired state the agent should maintain for this package.
  final pulumi.Input<OSPolicyResourcePackageResourceDesiredState> desiredState;
  /// A package managed by GooGet.
  final pulumi.Input<OSPolicyResourcePackageResourceGooGet>? googet;
  /// An MSI package.
  final pulumi.Input<OSPolicyResourcePackageResourceMSI>? msi;
  /// An rpm package file.
  final pulumi.Input<OSPolicyResourcePackageResourceRPM>? rpm;
  /// A package managed by YUM.
  final pulumi.Input<OSPolicyResourcePackageResourceYUM>? yum;
  /// A package managed by Zypper.
  final pulumi.Input<OSPolicyResourcePackageResourceZypper>? zypper;

  /// Creates a new [OSPolicyResourcePackageResource].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  const OSPolicyResourcePackageResource({
    this.apt,
    this.deb,
    required this.desiredState,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceAPT, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceDeb, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceDesiredState, String>(desiredState, (value) => value.wireValue),
      'googet': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceGooGet, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceMSI, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceRPM, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceYUM, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResource(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceAPT.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deb: (() { final guardedValue = map['deb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceDeb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      desiredState: pulumi.Input.fromValue(OSPolicyResourcePackageResourceDesiredState.fromValue(map['desiredState']! as String)),
      googet: (() { final guardedValue = map['googet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceGooGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msi: (() { final guardedValue = map['msi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceMSI.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpm: (() { final guardedValue = map['rpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceRPM.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceYUM.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
