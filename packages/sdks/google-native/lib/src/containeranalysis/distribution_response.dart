// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class DistributionResponse {
  /// The CPU architecture for which packages in this distribution channel were built.
  final pulumi.Input<String> architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;

  /// The distribution channel-specific description of this package.
  final pulumi.Input<String> description;

  /// The latest available version of this package in this distribution channel.
  final pulumi.Input<VersionResponse> latestVersion;

  /// A freeform string denoting the maintainer of this package.
  final pulumi.Input<String> maintainer;

  /// The distribution channel-specific homepage for this package.
  final pulumi.Input<String> url;

  /// Creates a new [DistributionResponse].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [description] The distribution channel-specific description of this package.
  /// [latestVersion] The latest available version of this package in this distribution channel.
  /// [maintainer] A freeform string denoting the maintainer of this package.
  /// [url] The distribution channel-specific homepage for this package.
  DistributionResponse({
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
      'latestVersion':
          pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(
            latestVersion,
            (value) => value.toMap(),
          ),
      'maintainer': maintainer,
      'url': url,
    };
  }

  factory DistributionResponse.fromMap(Map<String, dynamic> map) {
    return DistributionResponse(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      latestVersion: pulumi.Input.fromValue(
        VersionResponse.fromMap(
          (map['latestVersion']! as Map).cast<String, dynamic>(),
        ),
      ),
      maintainer: pulumi.Input.fromValue(map['maintainer'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
