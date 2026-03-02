// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final pulumi.Input<bool>? pullDeps;
  /// A deb package.
  final pulumi.Input<OSPolicyResourceFileOsconfigV1alpha> source;

  /// Creates a new [OSPolicyResourcePackageResourceDebOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDebOsconfigV1alpha({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileOsconfigV1alpha, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceDebOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebOsconfigV1alpha(
      pullDeps: map['pullDeps'] == null ? null : (map['pullDeps'] as bool).input(),
      source: (OSPolicyResourceFileOsconfigV1alpha.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

