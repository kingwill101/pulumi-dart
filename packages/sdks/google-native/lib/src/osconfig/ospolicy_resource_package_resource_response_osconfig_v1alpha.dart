// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_package_resource_aptresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_deb_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_goo_get_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_msiresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_rpmresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_yumresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_zypper_response_osconfig_v1alpha.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceResponseOsconfigV1alpha {
  /// A package managed by Apt.
  final pulumi.Input<OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha> apt;
  /// A deb package file.
  final pulumi.Input<OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha> deb;
  /// The desired state the agent should maintain for this package.
  final pulumi.Input<String> desiredState;
  /// A package managed by GooGet.
  final pulumi.Input<OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha> googet;
  /// An MSI package.
  final pulumi.Input<OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha> msi;
  /// An rpm package file.
  final pulumi.Input<OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha> rpm;
  /// A package managed by YUM.
  final pulumi.Input<OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha> yum;
  /// A package managed by Zypper.
  final pulumi.Input<OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha> zypper;

  /// Creates a new [OSPolicyResourcePackageResourceResponseOsconfigV1alpha].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  const OSPolicyResourcePackageResourceResponseOsconfigV1alpha({
    required this.apt,
    required this.deb,
    required this.desiredState,
    required this.googet,
    required this.msi,
    required this.rpm,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': desiredState,
      'googet': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceResponseOsconfigV1alpha(
      apt: pulumi.Input.fromValue(OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha.fromMap((map['apt']! as Map).cast<String, dynamic>())),
      deb: pulumi.Input.fromValue(OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha.fromMap((map['deb']! as Map).cast<String, dynamic>())),
      desiredState: pulumi.Input.fromValue(map['desiredState'] as String),
      googet: pulumi.Input.fromValue(OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha.fromMap((map['googet']! as Map).cast<String, dynamic>())),
      msi: pulumi.Input.fromValue(OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha.fromMap((map['msi']! as Map).cast<String, dynamic>())),
      rpm: pulumi.Input.fromValue(OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha.fromMap((map['rpm']! as Map).cast<String, dynamic>())),
      yum: pulumi.Input.fromValue(OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha.fromMap((map['yum']! as Map).cast<String, dynamic>())),
      zypper: pulumi.Input.fromValue(OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha.fromMap((map['zypper']! as Map).cast<String, dynamic>())),
    );
  }
}

