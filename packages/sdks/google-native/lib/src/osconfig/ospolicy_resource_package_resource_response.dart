// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_package_resource_aptresponse.dart';
import 'ospolicy_resource_package_resource_deb_response.dart';
import 'ospolicy_resource_package_resource_goo_get_response.dart';
import 'ospolicy_resource_package_resource_msiresponse.dart';
import 'ospolicy_resource_package_resource_rpmresponse.dart';
import 'ospolicy_resource_package_resource_yumresponse.dart';
import 'ospolicy_resource_package_resource_zypper_response.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceResponse {
  /// A package managed by Apt.
  final pulumi.Input<OSPolicyResourcePackageResourceAPTResponse> apt;
  /// A deb package file.
  final pulumi.Input<OSPolicyResourcePackageResourceDebResponse> deb;
  /// The desired state the agent should maintain for this package.
  final pulumi.Input<String> desiredState;
  /// A package managed by GooGet.
  final pulumi.Input<OSPolicyResourcePackageResourceGooGetResponse> googet;
  /// An MSI package.
  final pulumi.Input<OSPolicyResourcePackageResourceMSIResponse> msi;
  /// An rpm package file.
  final pulumi.Input<OSPolicyResourcePackageResourceRPMResponse> rpm;
  /// A package managed by YUM.
  final pulumi.Input<OSPolicyResourcePackageResourceYUMResponse> yum;
  /// A package managed by Zypper.
  final pulumi.Input<OSPolicyResourcePackageResourceZypperResponse> zypper;

  /// Creates a new [OSPolicyResourcePackageResourceResponse].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  OSPolicyResourcePackageResourceResponse({
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
      'apt': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceAPTResponse, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'deb': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceDebResponse, Map<String, dynamic>>(deb, (value) => value.toMap()),
      'desiredState': desiredState,
      'googet': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceGooGetResponse, Map<String, dynamic>>(googet, (value) => value.toMap()),
      'msi': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceMSIResponse, Map<String, dynamic>>(msi, (value) => value.toMap()),
      'rpm': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceRPMResponse, Map<String, dynamic>>(rpm, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceYUMResponse, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<OSPolicyResourcePackageResourceZypperResponse, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceResponse(
      apt: (OSPolicyResourcePackageResourceAPTResponse.fromMap((map['apt'] as Map).cast<String, dynamic>())).input(),
      deb: (OSPolicyResourcePackageResourceDebResponse.fromMap((map['deb'] as Map).cast<String, dynamic>())).input(),
      desiredState: (map['desiredState'] as String).input(),
      googet: (OSPolicyResourcePackageResourceGooGetResponse.fromMap((map['googet'] as Map).cast<String, dynamic>())).input(),
      msi: (OSPolicyResourcePackageResourceMSIResponse.fromMap((map['msi'] as Map).cast<String, dynamic>())).input(),
      rpm: (OSPolicyResourcePackageResourceRPMResponse.fromMap((map['rpm'] as Map).cast<String, dynamic>())).input(),
      yum: (OSPolicyResourcePackageResourceYUMResponse.fromMap((map['yum'] as Map).cast<String, dynamic>())).input(),
      zypper: (OSPolicyResourcePackageResourceZypperResponse.fromMap((map['zypper'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

