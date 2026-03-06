// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployer_vm_packages_response.dart';

/// Defines the OS and SAP Configurations for Deployment
class OsSapConfigurationResponse {
  /// The url and storage account ID where deployer VM packages are uploaded
  final pulumi.Input<DeployerVmPackagesResponse>? deployerVmPackages;
  /// The FQDN to set for the SAP system
  final pulumi.Input<String>? sapFqdn;

  /// Creates a new [OsSapConfigurationResponse].
  /// [deployerVmPackages] The url and storage account ID where deployer VM packages are uploaded
  /// [sapFqdn] The FQDN to set for the SAP system
  const OsSapConfigurationResponse({
    this.deployerVmPackages,
    this.sapFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployerVmPackages': ?pulumi.Input.mapOptionalInputValue<DeployerVmPackagesResponse, Map<String, dynamic>>(deployerVmPackages, (value) => value.toMap()),
      'sapFqdn': ?sapFqdn,
    };
  }

  factory OsSapConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OsSapConfigurationResponse(
      deployerVmPackages: (() { final guardedValue = map['deployerVmPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployerVmPackagesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sapFqdn: (() { final guardedValue = map['sapFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

