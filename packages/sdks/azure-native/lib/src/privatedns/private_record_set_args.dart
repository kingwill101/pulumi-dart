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
    this.aRecords,
    this.aaaaRecords,
    this.cnameRecord,
    this.metadata,
    this.mxRecords,
    required this.privateZoneName,
    this.ptrRecords,
    required this.recordType,
    this.relativeRecordSetName,
    required this.resourceGroupName,
    this.soaRecord,
    this.srvRecords,
    this.ttl,
    this.txtRecords,
  });

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
      aRecords: map['aRecords'] == null ? null : (pulumi.Input.decodeList<ARecord>(map['aRecords'], (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aaaaRecords: map['aaaaRecords'] == null ? null : (pulumi.Input.decodeList<AaaaRecord>(map['aaaaRecords'], (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cnameRecord: map['cnameRecord'] == null ? null : (CnameRecord.fromMap((map['cnameRecord'] as Map).cast<String, dynamic>())).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      mxRecords: map['mxRecords'] == null ? null : (pulumi.Input.decodeList<MxRecord>(map['mxRecords'], (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateZoneName: (map['privateZoneName'] as String).input(),
      ptrRecords: map['ptrRecords'] == null ? null : (pulumi.Input.decodeList<PtrRecord>(map['ptrRecords'], (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recordType: (map['recordType'] as String).input(),
      relativeRecordSetName: map['relativeRecordSetName'] == null ? null : (map['relativeRecordSetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      soaRecord: map['soaRecord'] == null ? null : (SoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())).input(),
      srvRecords: map['srvRecords'] == null ? null : (pulumi.Input.decodeList<SrvRecord>(map['srvRecords'], (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as double).input(),
      txtRecords: map['txtRecords'] == null ? null : (pulumi.Input.decodeList<TxtRecord>(map['txtRecords'], (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

