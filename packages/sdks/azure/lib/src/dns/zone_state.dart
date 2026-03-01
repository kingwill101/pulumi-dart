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
    pulumi.Output<int>? maxNumberOfRecordSets,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? nameServers,
    pulumi.Output<int>? numberOfRecordSets,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<ZoneSoaRecord>? soaRecord,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      maxNumberOfRecordSets = pulumi.Input.asOptionalInput<int>(maxNumberOfRecordSets),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameServers = pulumi.Input.asOptionalInput<List<String>>(nameServers),
      numberOfRecordSets = pulumi.Input.asOptionalInput<int>(numberOfRecordSets),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      soaRecord = pulumi.Input.asOptionalInput<ZoneSoaRecord>(soaRecord),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] == null ? null : pulumi.Output.create<int>(map['maxNumberOfRecordSets'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<String>>((map['nameServers'] as List).cast<String>()),
      numberOfRecordSets: map['numberOfRecordSets'] == null ? null : pulumi.Output.create<int>(map['numberOfRecordSets'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      soaRecord: map['soaRecord'] == null ? null : pulumi.Output.create<ZoneSoaRecord>(ZoneSoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

