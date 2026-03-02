// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response_containeranalysis_v1alpha1.dart';

/// This represents a particular channel of distribution for a given package. e.g. Debian's jessie-backports dpkg mirror
class DistributionResponseContaineranalysisV1alpha1 {
  /// The CPU architecture for which packages in this distribution channel were built
  final pulumi.Input<String> architecture;
  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;
  /// The distribution channel-specific description of this package.
  final pulumi.Input<String> description;
  /// The latest available version of this package in this distribution channel.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> latestVersion;
  /// A freeform string denoting the maintainer of this package.
  final pulumi.Input<String> maintainer;
  /// The distribution channel-specific homepage for this package.
  final pulumi.Input<String> url;

  /// Creates a new [DistributionResponseContaineranalysisV1alpha1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built
  /// [cpeUri] The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [description] The distribution channel-specific description of this package.
  /// [latestVersion] The latest available version of this package in this distribution channel.
  /// [maintainer] A freeform string denoting the maintainer of this package.
  /// [url] The distribution channel-specific homepage for this package.
  DistributionResponseContaineranalysisV1alpha1({
    required this.architecture,
    required this.cpeUri,
    required this.description,
    required this.latestVersion,
    required this.maintainer,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'cpeUri': cpeUri,
      'description': description,
      'latestVersion': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(latestVersion, (value) => value.toMap()),
      'maintainer': maintainer,
      'url': url,
    };
  }

  factory DistributionResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DistributionResponseContaineranalysisV1alpha1(
      architecture: (map['architecture'] as String).input(),
      cpeUri: (map['cpeUri'] as String).input(),
      description: (map['description'] as String).input(),
      latestVersion: (VersionResponseContaineranalysisV1alpha1.fromMap((map['latestVersion'] as Map).cast<String, dynamic>())).input(),
      maintainer: (map['maintainer'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

