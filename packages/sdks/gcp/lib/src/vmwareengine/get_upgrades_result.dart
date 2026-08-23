// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade.dart';

/// Result data returned by getUpgrades.
class GetUpgradesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The resource name of the private cloud Upgrade.
  final String? name;
  final String parent;
  /// A list of VMware Engine upgrades. Contains one element if 'name' is specified in the arguments, otherwise all upgrades for the private cloud.
  final List<GetUpgradesUpgrade> upgrades;

  /// Creates a new [GetUpgradesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the private cloud Upgrade.
  /// [parent] Required.
  /// [upgrades] A list of VMware Engine upgrades. Contains one element if 'name' is specified in the arguments, otherwise all upgrades for the private cloud.
  const GetUpgradesResult({
    required this.id,
    this.name,
    required this.parent,
    required this.upgrades,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'parent': parent,
      'upgrades': pulumi.Input.encodeList<GetUpgradesUpgrade, Map<String, dynamic>>(upgrades, (value) => value.toMap()),
    };
  }

  factory GetUpgradesResult.fromMap(Map<String, dynamic> map) {
    return GetUpgradesResult(
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: map['parent'] as String,
      upgrades: pulumi.Input.decodeList<GetUpgradesUpgrade>(map['upgrades']!, (value) => GetUpgradesUpgrade.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
