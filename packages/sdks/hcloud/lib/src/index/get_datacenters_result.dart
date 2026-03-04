// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datacenters_datacenter.dart';

/// Result data returned by getDatacenters.
class GetDatacentersResult {
  final List<String> datacenterIds;
  final List<GetDatacentersDatacenter> datacenters;
  final List<String> descriptions;

  /// The ID of this resource.
  final String id;
  final List<String> names;

  /// Creates a new [GetDatacentersResult].
  /// [datacenterIds] Required.
  /// [datacenters] Required.
  /// [descriptions] Required.
  /// [id] The ID of this resource.
  /// [names] Required.
  GetDatacentersResult({
    required this.datacenterIds,
    required this.datacenters,
    required this.descriptions,
    required this.id,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterIds': datacenterIds,
      'datacenters':
          pulumi.Input.encodeList<
            GetDatacentersDatacenter,
            Map<String, dynamic>
          >(datacenters, (value) => value.toMap()),
      'descriptions': descriptions,
      'id': id,
      'names': names,
    };
  }

  factory GetDatacentersResult.fromMap(Map<String, dynamic> map) {
    return GetDatacentersResult(
      datacenterIds: (map['datacenterIds'] as List).cast<String>(),
      datacenters: pulumi.Input.decodeList<GetDatacentersDatacenter>(
        map['datacenters']!,
        (value) => GetDatacentersDatacenter.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
