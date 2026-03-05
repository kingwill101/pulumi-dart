// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_rpm_source.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm {
  /// Whether dependencies should also be installed. -
  /// install when false: `rpm --upgrade --replacepkgs package.rpm` - install when
  /// true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final pulumi.Input<bool>? pullDeps;
  /// An rpm package. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource> source;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm].
  /// [pullDeps] Whether dependencies should also be installed. -
  /// [source] An rpm package. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': pulumi.Input.mapInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm(
      pullDeps: (() { final guardedValue = map['pullDeps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

