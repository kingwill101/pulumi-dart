// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_msi_source.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi {
  /// Additional properties to use during installation.
  /// This should be in the format of Property=Setting. Appended to the defaults
  /// of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final pulumi.Input<List<String>?>? properties;
  /// The MSI package. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource> source;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi].
  /// [properties] Additional properties to use during installation.
  /// [source] The MSI package. Structure is
  const OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi({
    this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'source': pulumi.Input.mapInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: pulumi.Input.fromValue(OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
