// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb {
  /// Whether dependencies should also be installed. -
  /// install when false: `dpkg -i package` - install when true: `apt-get update
  /// && apt-get -y install package.deb`
  final bool? pullDeps;
  /// A deb package. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource source;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb].
  /// [pullDeps] Whether dependencies should also be installed. -
  /// [source] A deb package. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source': source.toMap(),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

