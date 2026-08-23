// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final pulumi.Input<bool> pullDeps;
  /// An rpm package.
  final pulumi.Input<OSPolicyResourceFileResponseOsconfigV1alpha> source;

  /// Creates a new [OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  /// [source] An rpm package.
  const OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileResponseOsconfigV1alpha, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha(
      pullDeps: pulumi.Input.fromValue(map['pullDeps'] as bool),
      source: pulumi.Input.fromValue(OSPolicyResourceFileResponseOsconfigV1alpha.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
