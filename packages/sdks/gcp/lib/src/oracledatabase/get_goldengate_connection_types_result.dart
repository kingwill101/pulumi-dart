// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_connection_types_goldengate_connection_type.dart';

/// Result data returned by getGoldengateConnectionTypes.
class GetGoldengateConnectionTypesResult {
  final List<GetGoldengateConnectionTypesGoldengateConnectionType> goldengateConnectionTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetGoldengateConnectionTypesResult].
  /// [goldengateConnectionTypes] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  const GetGoldengateConnectionTypesResult({
    required this.goldengateConnectionTypes,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateConnectionTypes': pulumi.Input.encodeList<GetGoldengateConnectionTypesGoldengateConnectionType, Map<String, dynamic>>(goldengateConnectionTypes, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateConnectionTypesResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateConnectionTypesResult(
      goldengateConnectionTypes: pulumi.Input.decodeList<GetGoldengateConnectionTypesGoldengateConnectionType>(map['goldengateConnectionTypes']!, (value) => GetGoldengateConnectionTypesGoldengateConnectionType.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
