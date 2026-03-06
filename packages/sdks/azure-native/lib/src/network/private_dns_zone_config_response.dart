// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_response.dart';

/// PrivateDnsZoneConfig resource.
class PrivateDnsZoneConfigResponse {
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource id of the private dns zone.
  final pulumi.Input<String>? privateDnsZoneId;
  /// A collection of information regarding a recordSet, holding information to identify private resources.
  final pulumi.Input<List<RecordSetResponse>> recordSets;

  /// Creates a new [PrivateDnsZoneConfigResponse].
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneId] The resource id of the private dns zone.
  /// [recordSets] A collection of information regarding a recordSet, holding information to identify private resources.
  const PrivateDnsZoneConfigResponse({
    this.name,
    this.privateDnsZoneId,
    required this.recordSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateDnsZoneId': ?privateDnsZoneId,
      'recordSets': pulumi.Input.mapInputValue<List<RecordSetResponse>, List<Map<String, dynamic>>>(recordSets, (value) => pulumi.Input.encodeList<RecordSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PrivateDnsZoneConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivateDnsZoneConfigResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordSets: pulumi.Input.fromValue(pulumi.Input.decodeList<RecordSetResponse>(map['recordSets']!, (value) => RecordSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

