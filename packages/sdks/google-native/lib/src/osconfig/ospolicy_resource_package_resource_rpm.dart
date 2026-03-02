// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPM {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final pulumi.Input<bool>? pullDeps;
  /// An rpm package.
  final pulumi.Input<OSPolicyResourceFile> source;

  /// Creates a new [OSPolicyResourcePackageResourceRPM].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  /// [source] An rpm package.
  OSPolicyResourcePackageResourceRPM({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFile, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceRPM.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPM(
      pullDeps: map['pullDeps'] == null ? null : (map['pullDeps']! as bool).input(),
      source: (OSPolicyResourceFile.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

