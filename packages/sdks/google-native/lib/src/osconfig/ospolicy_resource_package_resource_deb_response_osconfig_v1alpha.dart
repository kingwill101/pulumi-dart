// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final pulumi.Input<bool> pullDeps;
  /// A deb package.
  final pulumi.Input<OSPolicyResourceFileResponseOsconfigV1alpha> source;

  /// Creates a new [OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileResponseOsconfigV1alpha, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha(
      pullDeps: (map['pullDeps'] as bool).input(),
      source: (OSPolicyResourceFileResponseOsconfigV1alpha.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

