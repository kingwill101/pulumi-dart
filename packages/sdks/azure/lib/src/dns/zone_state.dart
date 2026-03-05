// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_soa_record.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// Maximum number of Records in the zone.
  final pulumi.Input<int>? maxNumberOfRecordSets;
  /// The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the NS record for the zone.
  final pulumi.Input<List<String>>? nameServers;
  /// The number of records already in the zone.
  final pulumi.Input<int>? numberOfRecordSets;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `soa_record` block as defined below.
  final pulumi.Input<ZoneSoaRecord>? soaRecord;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ZoneState].
  /// [maxNumberOfRecordSets] Maximum number of Records in the zone.
  /// [name] The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [nameServers] A list of values that make up the NS record for the zone.
  /// [numberOfRecordSets] The number of records already in the zone.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [soaRecord] A `soa_record` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  ZoneState({
    this.maxNumberOfRecordSets,
    this.name,
    this.nameServers,
    this.numberOfRecordSets,
    this.resourceGroupName,
    this.soaRecord,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'name': ?name,
      'nameServers': ?nameServers,
      'numberOfRecordSets': ?numberOfRecordSets,
      'resourceGroupName': ?resourceGroupName,
      'soaRecord': ?pulumi.Input.mapOptionalInputValue<ZoneSoaRecord, Map<String, dynamic>>(soaRecord, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      soaRecord: (() { final guardedValue = map['soaRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneSoaRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

