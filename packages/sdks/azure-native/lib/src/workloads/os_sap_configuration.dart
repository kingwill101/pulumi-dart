// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployer_vm_packages.dart';

/// Defines the OS and SAP Configurations for Deployment
class OsSapConfiguration {
  /// The url and storage account ID where deployer VM packages are uploaded
  final pulumi.Input<DeployerVmPackages>? deployerVmPackages;
  /// The FQDN to set for the SAP system
  final pulumi.Input<String>? sapFqdn;

  /// Creates a new [OsSapConfiguration].
  /// [deployerVmPackages] The url and storage account ID where deployer VM packages are uploaded
  /// [sapFqdn] The FQDN to set for the SAP system
  OsSapConfiguration({
    this.deployerVmPackages,
    this.sapFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployerVmPackages': ?pulumi.Input.mapOptionalInputValue<DeployerVmPackages, Map<String, dynamic>>(deployerVmPackages, (value) => value.toMap()),
      'sapFqdn': ?sapFqdn,
    };
  }

  factory OsSapConfiguration.fromMap(Map<String, dynamic> map) {
    return OsSapConfiguration(
      deployerVmPackages: map['deployerVmPackages'] == null ? null : (DeployerVmPackages.fromMap((map['deployerVmPackages'] as Map).cast<String, dynamic>())).input(),
      sapFqdn: map['sapFqdn'] == null ? null : (map['sapFqdn'] as String).input(),
    );
  }
}

