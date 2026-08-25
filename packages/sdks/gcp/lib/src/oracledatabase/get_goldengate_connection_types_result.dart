// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_connection_types_goldengate_connection_type.dart';

/// Result data returned by getGoldengateConnectionTypes.
class GetGoldengateConnectionTypesResult {
  final List<GetGoldengateConnectionTypesGoldengateConnectionType>? goldengateConnectionTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetGoldengateConnectionTypesResult].
  /// [goldengateConnectionTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetGoldengateConnectionTypesResult({
    this.goldengateConnectionTypes,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateConnectionTypes': ?(() { final guardedValue = goldengateConnectionTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGoldengateConnectionTypesGoldengateConnectionType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetGoldengateConnectionTypesResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateConnectionTypesResult(
      goldengateConnectionTypes: (() { final guardedValue = map['goldengateConnectionTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGoldengateConnectionTypesGoldengateConnectionType>(guardedValue, (value) => GetGoldengateConnectionTypesGoldengateConnectionType.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
