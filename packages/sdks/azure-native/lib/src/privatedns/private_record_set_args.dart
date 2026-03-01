// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaa_record.dart';
import 'arecord.dart';
import 'cname_record.dart';
import 'mx_record.dart';
import 'ptr_record.dart';
import 'soa_record.dart';
import 'srv_record.dart';
import 'txt_record.dart';

/// {@template pulumi_privatedns_private_record_set_args_doc}
/// The set of arguments for PrivateRecordSet.
/// {@endtemplate}
/// {@macro pulumi_privatedns_private_record_set_args_doc}
class PrivateRecordSetArgs {
  /// The list of A records in the record set.
  final pulumi.Input<List<ARecord>>? aRecords;
  /// The list of AAAA records in the record set.
  final pulumi.Input<List<AaaaRecord>>? aaaaRecords;
  /// The CNAME record in the record set.
  final pulumi.Input<CnameRecord>? cnameRecord;
  /// The metadata attached to the record set.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The list of MX records in the record set.
  final pulumi.Input<List<MxRecord>>? mxRecords;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> privateZoneName;
  /// The list of PTR records in the record set.
  final pulumi.Input<List<PtrRecord>>? ptrRecords;
  /// The type of DNS record in this record set.
  final pulumi.Input<String> recordType;
  /// The name of the record set, relative to the name of the zone.
  final pulumi.Input<String>? relativeRecordSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SOA record in the record set.
  final pulumi.Input<SoaRecord>? soaRecord;
  /// The list of SRV records in the record set.
  final pulumi.Input<List<SrvRecord>>? srvRecords;
  /// The TTL (time-to-live) of the records in the record set.
  final pulumi.Input<double>? ttl;
  /// The list of TXT records in the record set.
  final pulumi.Input<List<TxtRecord>>? txtRecords;

  /// Creates a new [PrivateRecordSetArgs].
  /// [aRecords] The list of A records in the record set.
  /// [aaaaRecords] The list of AAAA records in the record set.
  /// [cnameRecord] The CNAME record in the record set.
  /// [metadata] The metadata attached to the record set.
  /// [mxRecords] The list of MX records in the record set.
  /// [privateZoneName] The name of the DNS zone (without a terminating dot).
  /// [ptrRecords] The list of PTR records in the record set.
  /// [recordType] The type of DNS record in this record set.
  /// [relativeRecordSetName] The name of the record set, relative to the name of the zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [soaRecord] The SOA record in the record set.
  /// [srvRecords] The list of SRV records in the record set.
  /// [ttl] The TTL (time-to-live) of the records in the record set.
  /// [txtRecords] The list of TXT records in the record set.
  PrivateRecordSetArgs({
    pulumi.Output<List<ARecord>>? aRecords,
    pulumi.Output<List<AaaaRecord>>? aaaaRecords,
    pulumi.Output<CnameRecord>? cnameRecord,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<List<MxRecord>>? mxRecords,
    required pulumi.Output<String> privateZoneName,
    pulumi.Output<List<PtrRecord>>? ptrRecords,
    required pulumi.Output<String> recordType,
    pulumi.Output<String>? relativeRecordSetName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SoaRecord>? soaRecord,
    pulumi.Output<List<SrvRecord>>? srvRecords,
    pulumi.Output<double>? ttl,
    pulumi.Output<List<TxtRecord>>? txtRecords,
  }) :
      aRecords = pulumi.Input.asOptionalInput<List<ARecord>>(aRecords),
      aaaaRecords = pulumi.Input.asOptionalInput<List<AaaaRecord>>(aaaaRecords),
      cnameRecord = pulumi.Input.asOptionalInput<CnameRecord>(cnameRecord),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      mxRecords = pulumi.Input.asOptionalInput<List<MxRecord>>(mxRecords),
      privateZoneName = pulumi.Input.asInput<String>(privateZoneName),
      ptrRecords = pulumi.Input.asOptionalInput<List<PtrRecord>>(ptrRecords),
      recordType = pulumi.Input.asInput<String>(recordType),
      relativeRecordSetName = pulumi.Input.asOptionalInput<String>(relativeRecordSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      soaRecord = pulumi.Input.asOptionalInput<SoaRecord>(soaRecord),
      srvRecords = pulumi.Input.asOptionalInput<List<SrvRecord>>(srvRecords),
      ttl = pulumi.Input.asOptionalInput<double>(ttl),
      txtRecords = pulumi.Input.asOptionalInput<List<TxtRecord>>(txtRecords);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?pulumi.Input.mapOptionalInputValue<List<ARecord>, List<Map<String, dynamic>>>(aRecords, (value) => pulumi.Input.encodeList<ARecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aaaaRecords': ?pulumi.Input.mapOptionalInputValue<List<AaaaRecord>, List<Map<String, dynamic>>>(aaaaRecords, (value) => pulumi.Input.encodeList<AaaaRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cnameRecord': ?pulumi.Input.mapOptionalInputValue<CnameRecord, Map<String, dynamic>>(cnameRecord, (value) => value.toMap()),
      'metadata': ?metadata,
      'mxRecords': ?pulumi.Input.mapOptionalInputValue<List<MxRecord>, List<Map<String, dynamic>>>(mxRecords, (value) => pulumi.Input.encodeList<MxRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateZoneName': privateZoneName,
      'ptrRecords': ?pulumi.Input.mapOptionalInputValue<List<PtrRecord>, List<Map<String, dynamic>>>(ptrRecords, (value) => pulumi.Input.encodeList<PtrRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordType': recordType,
      'relativeRecordSetName': ?relativeRecordSetName,
      'resourceGroupName': resourceGroupName,
      'soaRecord': ?pulumi.Input.mapOptionalInputValue<SoaRecord, Map<String, dynamic>>(soaRecord, (value) => value.toMap()),
      'srvRecords': ?pulumi.Input.mapOptionalInputValue<List<SrvRecord>, List<Map<String, dynamic>>>(srvRecords, (value) => pulumi.Input.encodeList<SrvRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ttl': ?ttl,
      'txtRecords': ?pulumi.Input.mapOptionalInputValue<List<TxtRecord>, List<Map<String, dynamic>>>(txtRecords, (value) => pulumi.Input.encodeList<TxtRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PrivateRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return PrivateRecordSetArgs(
      aRecords: map['aRecords'] == null ? null : pulumi.Output.create<List<ARecord>>(pulumi.Input.decodeList<ARecord>(map['aRecords'], (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))),
      aaaaRecords: map['aaaaRecords'] == null ? null : pulumi.Output.create<List<AaaaRecord>>(pulumi.Input.decodeList<AaaaRecord>(map['aaaaRecords'], (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))),
      cnameRecord: map['cnameRecord'] == null ? null : pulumi.Output.create<CnameRecord>(CnameRecord.fromMap((map['cnameRecord'] as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      mxRecords: map['mxRecords'] == null ? null : pulumi.Output.create<List<MxRecord>>(pulumi.Input.decodeList<MxRecord>(map['mxRecords'], (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))),
      privateZoneName: pulumi.Output.create<String>(map['privateZoneName'] as String),
      ptrRecords: map['ptrRecords'] == null ? null : pulumi.Output.create<List<PtrRecord>>(pulumi.Input.decodeList<PtrRecord>(map['ptrRecords'], (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))),
      recordType: pulumi.Output.create<String>(map['recordType'] as String),
      relativeRecordSetName: map['relativeRecordSetName'] == null ? null : pulumi.Output.create<String>(map['relativeRecordSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      soaRecord: map['soaRecord'] == null ? null : pulumi.Output.create<SoaRecord>(SoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())),
      srvRecords: map['srvRecords'] == null ? null : pulumi.Output.create<List<SrvRecord>>(pulumi.Input.decodeList<SrvRecord>(map['srvRecords'], (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<double>(map['ttl'] as double),
      txtRecords: map['txtRecords'] == null ? null : pulumi.Output.create<List<TxtRecord>>(pulumi.Input.decodeList<TxtRecord>(map['txtRecords'], (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

