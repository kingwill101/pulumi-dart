// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade.dart';

/// Result data returned by getUpgrades.
class GetUpgradesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the private cloud Upgrade.
  final String? name;
  final String? parent;
  /// A list of VMware Engine upgrades. Contains one element if 'name' is specified in the arguments, otherwise all upgrades for the private cloud.
  final List<GetUpgradesUpgrade>? upgrades;

  /// Creates a new [GetUpgradesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the private cloud Upgrade.
  /// [parent] Optional.
  /// [upgrades] A list of VMware Engine upgrades. Contains one element if 'name' is specified in the arguments, otherwise all upgrades for the private cloud.
  const GetUpgradesResult({
    this.id,
    this.name,
    this.parent,
    this.upgrades,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
      'upgrades': ?(() { final guardedValue = upgrades; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUpgradesUpgrade, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetUpgradesResult.fromMap(Map<String, dynamic> map) {
    return GetUpgradesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgrades: (() { final guardedValue = map['upgrades']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUpgradesUpgrade>(guardedValue, (value) => GetUpgradesUpgrade.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
