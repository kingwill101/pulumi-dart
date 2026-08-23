// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final pulumi.Input<bool>? pullDeps;
  /// An rpm package.
  final pulumi.Input<OSPolicyResourceFileOsconfigV1alpha> source;

  /// Creates a new [OSPolicyResourcePackageResourceRPMOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  /// [source] An rpm package.
  const OSPolicyResourcePackageResourceRPMOsconfigV1alpha({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileOsconfigV1alpha, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceRPMOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMOsconfigV1alpha(
      pullDeps: (() { final guardedValue = map['pullDeps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: pulumi.Input.fromValue(OSPolicyResourceFileOsconfigV1alpha.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
