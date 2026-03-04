// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb_source.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb {
  /// Whether dependencies should also be installed.
  /// - install when false: `dpkg -i package`
  /// - install when true: `apt-get update && apt-get -y install
  /// package.deb`
  final pulumi.Input<bool>? pullDeps;

  /// A remote or local file.
  /// Structure is documented below.
  final pulumi.Input<
    V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDebSource
  >
  source;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb].
  /// [pullDeps] Whether dependencies should also be installed.
  /// [source] A remote or local file.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': ?pullDeps,
      'source':
          pulumi.Input.mapInputValue<
            V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDebSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb(
      pullDeps: (() {
        final guardedValue = map['pullDeps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      source: pulumi.Input.fromValue(
        V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDebSource.fromMap(
          (map['source']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
