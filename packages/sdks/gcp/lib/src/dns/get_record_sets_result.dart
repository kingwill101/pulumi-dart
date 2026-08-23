// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_record_sets_rrset.dart';

/// Result data returned by getRecordSets.
class GetRecordSetsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedZone;
  /// The name of the record set.
  final String? name;
  final String? project;
  /// A list of record sets in the selected managed zone matching the filter. Structure is defined below.
  final List<GetRecordSetsRrset> rrsets;
  /// The type of the record set.
  final String? type;

  /// Creates a new [GetRecordSetsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedZone] Required.
  /// [name] The name of the record set.
  /// [project] Optional.
  /// [rrsets] A list of record sets in the selected managed zone matching the filter. Structure is defined below.
  /// [type] The type of the record set.
  const GetRecordSetsResult({
    required this.id,
    required this.managedZone,
    this.name,
    this.project,
    required this.rrsets,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managedZone': managedZone,
      'name': ?name,
      'project': ?project,
      'rrsets': pulumi.Input.encodeList<GetRecordSetsRrset, Map<String, dynamic>>(rrsets, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory GetRecordSetsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetsResult(
      id: map['id'] as String,
      managedZone: map['managedZone'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rrsets: pulumi.Input.decodeList<GetRecordSetsRrset>(map['rrsets']!, (value) => GetRecordSetsRrset.fromMap((value as Map).cast<String, dynamic>())),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
