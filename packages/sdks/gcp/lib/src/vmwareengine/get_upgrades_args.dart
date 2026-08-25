// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_upgrades_get_upgrades_args_doc}
/// Arguments for getUpgrades.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_upgrades_get_upgrades_args_doc}
class GetUpgradesArgs {
  /// The resource name of the specific Upgrade to retrieve. If provided, the 'upgrades' list will contain only this upgrade.
  final pulumi.Input<String?>? name;
  /// The resource name of the private cloud for which upgrades will be listed. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  /// Creates a new [GetUpgradesArgs].
  /// [name] The resource name of the specific Upgrade to retrieve. If provided, the 'upgrades' list will contain only this upgrade.
  /// [parent] The resource name of the private cloud for which upgrades will be listed. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  const GetUpgradesArgs({
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parent': parent,
    };
  }

  factory GetUpgradesArgs.fromMap(Map<String, dynamic> map) {
    return GetUpgradesArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
