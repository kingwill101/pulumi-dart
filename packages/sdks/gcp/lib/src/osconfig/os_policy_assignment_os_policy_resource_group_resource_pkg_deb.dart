// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb {
  /// Whether dependencies should also be installed. -
  /// install when false: `dpkg -i package` - install when true: `apt-get update
  /// && apt-get -y install package.deb`
  final pulumi.Input<bool>? pullDeps;
  /// A deb package. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource> source;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb].
  /// [pullDeps] Whether dependencies should also be installed. -
  /// [source] A deb package. Structure is
  const OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': pulumi.Input.mapInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb(
      pullDeps: (() { final guardedValue = map['pullDeps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

