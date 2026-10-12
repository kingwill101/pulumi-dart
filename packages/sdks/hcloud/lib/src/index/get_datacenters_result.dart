// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datacenters_datacenter.dart';

/// Result data returned by getDatacenters.
class GetDatacentersResult {
  final List<String>? datacenterIds;
  final List<GetDatacentersDatacenter>? datacenters;
  final List<String>? descriptions;
  /// The ID of this resource.
  final String? id;
  final List<String>? names;

  /// Creates a new [GetDatacentersResult].
  /// [datacenterIds] Optional.
  /// [datacenters] Optional.
  /// [descriptions] Optional.
  /// [id] The ID of this resource.
  /// [names] Optional.
  const GetDatacentersResult({
    this.datacenterIds,
    this.datacenters,
    this.descriptions,
    this.id,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterIds': ?datacenterIds,
      'datacenters': ?(() { final guardedValue = datacenters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatacentersDatacenter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'descriptions': ?descriptions,
      'id': ?id,
      'names': ?names,
    };
  }

  factory GetDatacentersResult.fromMap(Map<String, dynamic> map) {
    return GetDatacentersResult(
      datacenterIds: (() { final guardedValue = map['datacenterIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      datacenters: (() { final guardedValue = map['datacenters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatacentersDatacenter>(guardedValue, (value) => GetDatacentersDatacenter.fromMap((value as Map).cast<String, dynamic>())); })(),
      descriptions: (() { final guardedValue = map['descriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
