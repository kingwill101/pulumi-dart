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
      'desiredState': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha, String>(desiredState, (value) => value.value),
      'googet': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceGooGetOsconfigV1alpha, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceMSIOsconfigV1alpha, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceRPMOsconfigV1alpha, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceYUMOsconfigV1alpha, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourcePackageResourceZypperOsconfigV1alpha, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceOsconfigV1alpha(
      apt: map['apt'] == null ? null : (OSPolicyResourcePackageResourceAPTOsconfigV1alpha.fromMap((map['apt'] as Map).cast<String, dynamic>())).input(),
      deb: map['deb'] == null ? null : (OSPolicyResourcePackageResourceDebOsconfigV1alpha.fromMap((map['deb'] as Map).cast<String, dynamic>())).input(),
      desiredState: (OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha.fromValue(map['desiredState'] as String)).input(),
      googet: map['googet'] == null ? null : (OSPolicyResourcePackageResourceGooGetOsconfigV1alpha.fromMap((map['googet'] as Map).cast<String, dynamic>())).input(),
      msi: map['msi'] == null ? null : (OSPolicyResourcePackageResourceMSIOsconfigV1alpha.fromMap((map['msi'] as Map).cast<String, dynamic>())).input(),
      rpm: map['rpm'] == null ? null : (OSPolicyResourcePackageResourceRPMOsconfigV1alpha.fromMap((map['rpm'] as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (OSPolicyResourcePackageResourceYUMOsconfigV1alpha.fromMap((map['yum'] as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (OSPolicyResourcePackageResourceZypperOsconfigV1alpha.fromMap((map['zypper'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

