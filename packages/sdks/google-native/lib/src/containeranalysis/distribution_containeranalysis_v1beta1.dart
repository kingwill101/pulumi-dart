// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_architecture_containeranalysis_v1beta1.dart';
import 'version_containeranalysis_v1beta1.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class DistributionContaineranalysisV1beta1 {
  /// The CPU architecture for which packages in this distribution channel were built.
  final pulumi.Input<DistributionArchitectureContaineranalysisV1beta1>? architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;
  /// The distribution channel-specific description of this package.
  final pulumi.Input<String>? description;
  /// The latest available version of this package in this distribution channel.
  final pulumi.Input<VersionContaineranalysisV1beta1>? latestVersion;
  /// A freeform string denoting the maintainer of this package.
  final pulumi.Input<String>? maintainer;
  /// The distribution channel-specific homepage for this package.
  final pulumi.Input<String>? url;

  /// Creates a new [DistributionContaineranalysisV1beta1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [description] The distribution channel-specific description of this package.
  /// [latestVersion] The latest available version of this package in this distribution channel.
  /// [maintainer] A freeform string denoting the maintainer of this package.
  /// [url] The distribution channel-specific homepage for this package.
  DistributionContaineranalysisV1beta1({
    this.architecture,
    required this.cpeUri,
    this.description,
    this.latestVersion,
    this.maintainer,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<DistributionArchitectureContaineranalysisV1beta1, String>(architecture, (value) => value.value),
      'cpeUri': cpeUri,
      'description': ?description,
      'latestVersion': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1beta1, Map<String, dynamic>>(latestVersion, (value) => value.toMap()),
      'maintainer': ?maintainer,
      'url': ?url,
    };
  }

  factory DistributionContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DistributionContaineranalysisV1beta1(
      architecture: map['architecture'] == null ? null : (DistributionArchitectureContaineranalysisV1beta1.fromValue(map['architecture'] as String)).input(),
      cpeUri: (map['cpeUri'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      latestVersion: map['latestVersion'] == null ? null : (VersionContaineranalysisV1beta1.fromMap((map['latestVersion'] as Map).cast<String, dynamic>())).input(),
      maintainer: map['maintainer'] == null ? null : (map['maintainer'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

