// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_architecture.dart';
import 'version.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class Distribution {
  /// The CPU architecture for which packages in this distribution channel were built.
  final pulumi.Input<DistributionArchitecture>? architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;
  /// The distribution channel-specific description of this package.
  final pulumi.Input<String>? description;
  /// The latest available version of this package in this distribution channel.
  final pulumi.Input<Version>? latestVersion;
  /// A freeform string denoting the maintainer of this package.
  final pulumi.Input<String>? maintainer;
  /// The distribution channel-specific homepage for this package.
  final pulumi.Input<String>? url;

  /// Creates a new [Distribution].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [description] The distribution channel-specific description of this package.
  /// [latestVersion] The latest available version of this package in this distribution channel.
  /// [maintainer] A freeform string denoting the maintainer of this package.
  /// [url] The distribution channel-specific homepage for this package.
  Distribution({
    this.architecture,
    required this.cpeUri,
    this.description,
    this.latestVersion,
    this.maintainer,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<DistributionArchitecture, String>(architecture, (value) => value.value),
      'cpeUri': cpeUri,
      'description': ?description,
      'latestVersion': ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(latestVersion, (value) => value.toMap()),
      'maintainer': ?maintainer,
      'url': ?url,
    };
  }

  factory Distribution.fromMap(Map<String, dynamic> map) {
    return Distribution(
      architecture: map['architecture'] == null ? null : (DistributionArchitecture.fromValue(map['architecture']! as String)).input(),
      cpeUri: (map['cpeUri'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      latestVersion: map['latestVersion'] == null ? null : (Version.fromMap((map['latestVersion']! as Map).cast<String, dynamic>())).input(),
      maintainer: map['maintainer'] == null ? null : (map['maintainer']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

