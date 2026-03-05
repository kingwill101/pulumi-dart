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
      aRecords: (() { final guardedValue = map['aRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ARecord>(guardedValue, (value) => ARecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aaaaRecords: (() { final guardedValue = map['aaaaRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AaaaRecord>(guardedValue, (value) => AaaaRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cnameRecord: (() { final guardedValue = map['cnameRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CnameRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mxRecords: (() { final guardedValue = map['mxRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MxRecord>(guardedValue, (value) => MxRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateZoneName: pulumi.Input.fromValue(map['privateZoneName'] as String),
      ptrRecords: (() { final guardedValue = map['ptrRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PtrRecord>(guardedValue, (value) => PtrRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordType: pulumi.Input.fromValue(map['recordType'] as String),
      relativeRecordSetName: (() { final guardedValue = map['relativeRecordSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      soaRecord: (() { final guardedValue = map['soaRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoaRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      srvRecords: (() { final guardedValue = map['srvRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SrvRecord>(guardedValue, (value) => SrvRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      txtRecords: (() { final guardedValue = map['txtRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TxtRecord>(guardedValue, (value) => TxtRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

