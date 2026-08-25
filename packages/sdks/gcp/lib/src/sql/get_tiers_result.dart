// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tiers_tier.dart';

/// Result data returned by getTiers.
class GetTiersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// A list of all available machine types (tiers) for project. Each contains:
  final List<GetTiersTier>? tiers;

  /// Creates a new [GetTiersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [tiers] A list of all available machine types (tiers) for project. Each contains:
  const GetTiersResult({
    this.id,
    this.project,
    this.tiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'project': ?project,
      'tiers': ?(() { final guardedValue = tiers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTiersTier, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTiersResult.fromMap(Map<String, dynamic> map) {
    return GetTiersResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tiers: (() { final guardedValue = map['tiers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTiersTier>(guardedValue, (value) => GetTiersTier.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
