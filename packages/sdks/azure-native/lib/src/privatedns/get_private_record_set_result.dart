// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaa_record_response.dart';
import 'arecord_response.dart';
import 'cname_record_response.dart';
import 'mx_record_response.dart';
import 'ptr_record_response.dart';
import 'soa_record_response.dart';
import 'srv_record_response.dart';
import 'system_data_response.dart';
import 'txt_record_response.dart';

/// Result data returned by getPrivateRecordSet.
class GetPrivateRecordSetResult {
  /// The list of A records in the record set.
  final List<ARecordResponse>? aRecords;
  /// The list of AAAA records in the record set.
  final List<AaaaRecordResponse>? aaaaRecords;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The CNAME record in the record set.
  final CnameRecordResponse? cnameRecord;
  /// The ETag of the record set.
  final String? etag;
  /// Fully qualified domain name of the record set.
  final String fqdn;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Is the record set auto-registered in the Private DNS zone through a virtual network link?
  final bool isAutoRegistered;
  /// The metadata attached to the record set.
  final Map<String, String>? metadata;
  /// The list of MX records in the record set.
  final List<MxRecordResponse>? mxRecords;
  /// The name of the resource
  final String name;
  /// The list of PTR records in the record set.
  final List<PtrRecordResponse>? ptrRecords;
  /// The SOA record in the record set.
  final SoaRecordResponse? soaRecord;
  /// The list of SRV records in the record set.
  final List<SrvRecordResponse>? srvRecords;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The TTL (time-to-live) of the records in the record set.
  final double? ttl;
  /// The list of TXT records in the record set.
  final List<TxtRecordResponse>? txtRecords;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateRecordSetResult].
  /// [aRecords] The list of A records in the record set.
  /// [aaaaRecords] The list of AAAA records in the record set.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cnameRecord] The CNAME record in the record set.
  /// [etag] The ETag of the record set.
  /// [fqdn] Fully qualified domain name of the record set.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isAutoRegistered] Is the record set auto-registered in the Private DNS zone through a virtual network link?
  /// [metadata] The metadata attached to the record set.
  /// [mxRecords] The list of MX records in the record set.
  /// [name] The name of the resource
  /// [ptrRecords] The list of PTR records in the record set.
  /// [soaRecord] The SOA record in the record set.
  /// [srvRecords] The list of SRV records in the record set.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [ttl] The TTL (time-to-live) of the records in the record set.
  /// [txtRecords] The list of TXT records in the record set.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateRecordSetResult({
    this.aRecords,
    this.aaaaRecords,
    required this.azureApiVersion,
    this.cnameRecord,
    this.etag,
    required this.fqdn,
    required this.id,
    required this.isAutoRegistered,
    this.metadata,
    this.mxRecords,
    required this.name,
    this.ptrRecords,
    this.soaRecord,
    this.srvRecords,
    required this.systemData,
    this.ttl,
    this.txtRecords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?aRecords == null ? null : pulumi.Input.encodeList<ARecordResponse, Map<String, dynamic>>(aRecords!, (value) => value.toMap()),
      'aaaaRecords': ?aaaaRecords == null ? null : pulumi.Input.encodeList<AaaaRecordResponse, Map<String, dynamic>>(aaaaRecords!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'cnameRecord': ?cnameRecord == null ? null : cnameRecord!.toMap(),
      'etag': ?etag,
      'fqdn': fqdn,
      'id': id,
      'isAutoRegistered': isAutoRegistered,
      'metadata': ?metadata,
      'mxRecords': ?mxRecords == null ? null : pulumi.Input.encodeList<MxRecordResponse, Map<String, dynamic>>(mxRecords!, (value) => value.toMap()),
      'name': name,
      'ptrRecords': ?ptrRecords == null ? null : pulumi.Input.encodeList<PtrRecordResponse, Map<String, dynamic>>(ptrRecords!, (value) => value.toMap()),
      'soaRecord': ?soaRecord == null ? null : soaRecord!.toMap(),
      'srvRecords': ?srvRecords == null ? null : pulumi.Input.encodeList<SrvRecordResponse, Map<String, dynamic>>(srvRecords!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'ttl': ?ttl,
      'txtRecords': ?txtRecords == null ? null : pulumi.Input.encodeList<TxtRecordResponse, Map<String, dynamic>>(txtRecords!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPrivateRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateRecordSetResult(
      aRecords: map['aRecords'] == null ? null : pulumi.Input.decodeList<ARecordResponse>(map['aRecords']!, (value) => ARecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      aaaaRecords: map['aaaaRecords'] == null ? null : pulumi.Input.decodeList<AaaaRecordResponse>(map['aaaaRecords']!, (value) => AaaaRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      cnameRecord: map['cnameRecord'] == null ? null : CnameRecordResponse.fromMap((map['cnameRecord']! as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag']! as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      isAutoRegistered: map['isAutoRegistered'] as bool,
      metadata: map['metadata'] == null ? null : (map['metadata']! as Map).cast<String, String>(),
      mxRecords: map['mxRecords'] == null ? null : pulumi.Input.decodeList<MxRecordResponse>(map['mxRecords']!, (value) => MxRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      ptrRecords: map['ptrRecords'] == null ? null : pulumi.Input.decodeList<PtrRecordResponse>(map['ptrRecords']!, (value) => PtrRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      soaRecord: map['soaRecord'] == null ? null : SoaRecordResponse.fromMap((map['soaRecord']! as Map).cast<String, dynamic>()),
      srvRecords: map['srvRecords'] == null ? null : pulumi.Input.decodeList<SrvRecordResponse>(map['srvRecords']!, (value) => SrvRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      ttl: map['ttl'] == null ? null : map['ttl']! as double,
      txtRecords: map['txtRecords'] == null ? null : pulumi.Input.decodeList<TxtRecordResponse>(map['txtRecords']!, (value) => TxtRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

