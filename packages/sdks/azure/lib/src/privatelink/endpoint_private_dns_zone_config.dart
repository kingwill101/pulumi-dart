// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_private_dns_zone_config_record_set.dart';

class EndpointPrivateDnsZoneConfig {
  /// The ID of the Private DNS Zone Config.
  final pulumi.Input<String>? id;

  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Private DNS Zone that the config belongs to.
  final pulumi.Input<String>? privateDnsZoneId;

  /// A `record_sets` block as defined below.
  final pulumi.Input<List<EndpointPrivateDnsZoneConfigRecordSet>>? recordSets;

  /// Creates a new [EndpointPrivateDnsZoneConfig].
  /// [id] The ID of the Private DNS Zone Config.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [privateDnsZoneId] The ID of the Private DNS Zone that the config belongs to.
  /// [recordSets] A `record_sets` block as defined below.
  EndpointPrivateDnsZoneConfig({
    this.id,
    this.name,
    this.privateDnsZoneId,
    this.recordSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateDnsZoneId': ?privateDnsZoneId,
      'recordSets':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointPrivateDnsZoneConfigRecordSet>,
            List<Map<String, dynamic>>
          >(
            recordSets,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointPrivateDnsZoneConfigRecordSet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EndpointPrivateDnsZoneConfig.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsZoneConfig(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateDnsZoneId: (() {
        final guardedValue = map['privateDnsZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordSets: (() {
        final guardedValue = map['recordSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointPrivateDnsZoneConfigRecordSet>(
            guardedValue,
            (value) => EndpointPrivateDnsZoneConfigRecordSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
