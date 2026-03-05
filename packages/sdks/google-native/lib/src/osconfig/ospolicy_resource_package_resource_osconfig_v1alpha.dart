// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_package_resource_aptosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_deb_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_desired_state_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_goo_get_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_msiosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_rpmosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_yumosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_zypper_osconfig_v1alpha.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceOsconfigV1alpha {
  /// A package managed by Apt.
  final pulumi.Input<OSPolicyResourcePackageResourceAPTOsconfigV1alpha>? apt;
  /// A deb package file.
  final pulumi.Input<OSPolicyResourcePackageResourceDebOsconfigV1alpha>? deb;
  /// The desired state the agent should maintain for this package.
  final pulumi.Input<OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha> desiredState;
  /// A package managed by GooGet.
  final pulumi.Input<OSPolicyResourcePackageResourceGooGetOsconfigV1alpha>? googet;
  /// An MSI package.
  final pulumi.Input<OSPolicyResourcePackageResourceMSIOsconfigV1alpha>? msi;
  /// An rpm package file.
  final pulumi.Input<OSPolicyResourcePackageResourceRPMOsconfigV1alpha>? rpm;
  /// A package managed by YUM.
  final pulumi.Input<OSPolicyResourcePackageResourceYUMOsconfigV1alpha>? yum;
  /// A package managed by Zypper.
  final pulumi.Input<OSPolicyResourcePackageResourceZypperOsconfigV1alpha>? zypper;

  /// Creates a new [OSPolicyResourcePackageResourceOsconfigV1alpha].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  OSPolicyResourcePackageResourceOsconfigV1alpha({
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
      'apt': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceAPTOsconfigV1alpha, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceDebOsconfigV1alpha, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha, String>(desiredState, (value) => value.wireValue),
      'googet': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceGooGetOsconfigV1alpha, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceMSIOsconfigV1alpha, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceRPMOsconfigV1alpha, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceYUMOsconfigV1alpha, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceZypperOsconfigV1alpha, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceOsconfigV1alpha(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceAPTOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deb: (() { final guardedValue = map['deb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceDebOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      desiredState: pulumi.Input.fromValue(OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha.fromValue(map['desiredState']! as String)),
      googet: (() { final guardedValue = map['googet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceGooGetOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msi: (() { final guardedValue = map['msi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceMSIOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpm: (() { final guardedValue = map['rpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceRPMOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceYUMOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourcePackageResourceZypperOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

