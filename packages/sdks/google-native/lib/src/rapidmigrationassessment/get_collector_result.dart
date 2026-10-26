// ignore_for_file: unused_element, unnecessary_cast

import 'guest_os_scan_response.dart';
import 'vsphere_scan_response.dart';

/// Result data returned by getCollector.
class GetCollectorResult {
  /// Store cloud storage bucket name (which is a guid) created with this Collector.
  final String? bucket;
  /// Client version.
  final String? clientVersion;
  /// How many days to collect data.
  final int? collectionDays;
  /// Create time stamp.
  final String? createTime;
  /// User specified description of the Collector.
  final String? description;
  /// User specified name of the Collector.
  final String? displayName;
  /// Uri for EULA (End User License Agreement) from customer.
  final String? eulaUri;
  /// User specified expected asset count.
  final String? expectedAssetCount;
  /// Reference to MC Source Guest Os Scan.
  final GuestOsScanResponse? guestOsScan;
  /// Labels as key value pairs.
  final Map<String, String>? labels;
  /// name of resource.
  final String? name;
  /// Service Account email used to ingest data to this Collector.
  final String? serviceAccount;
  /// State of the Collector.
  final String? state;
  /// Update time stamp.
  final String? updateTime;
  /// Reference to MC Source vsphere_scan.
  final VSphereScanResponse? vsphereScan;

  /// Creates a new [GetCollectorResult].
  /// [bucket] Store cloud storage bucket name (which is a guid) created with this Collector.
  /// [clientVersion] Client version.
  /// [collectionDays] How many days to collect data.
  /// [createTime] Create time stamp.
  /// [description] User specified description of the Collector.
  /// [displayName] User specified name of the Collector.
  /// [eulaUri] Uri for EULA (End User License Agreement) from customer.
  /// [expectedAssetCount] User specified expected asset count.
  /// [guestOsScan] Reference to MC Source Guest Os Scan.
  /// [labels] Labels as key value pairs.
  /// [name] name of resource.
  /// [serviceAccount] Service Account email used to ingest data to this Collector.
  /// [state] State of the Collector.
  /// [updateTime] Update time stamp.
  /// [vsphereScan] Reference to MC Source vsphere_scan.
  const GetCollectorResult({
    this.bucket,
    this.clientVersion,
    this.collectionDays,
    this.createTime,
    this.description,
    this.displayName,
    this.eulaUri,
    this.expectedAssetCount,
    this.guestOsScan,
    this.labels,
    this.name,
    this.serviceAccount,
    this.state,
    this.updateTime,
    this.vsphereScan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'clientVersion': ?clientVersion,
      'collectionDays': ?collectionDays,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'eulaUri': ?eulaUri,
      'expectedAssetCount': ?expectedAssetCount,
      'guestOsScan': ?guestOsScan?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'updateTime': ?updateTime,
      'vsphereScan': ?vsphereScan?.toMap(),
    };
  }

  factory GetCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetCollectorResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionDays: (() { final guardedValue = map['collectionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eulaUri: (() { final guardedValue = map['eulaUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expectedAssetCount: (() { final guardedValue = map['expectedAssetCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guestOsScan: (() { final guardedValue = map['guestOsScan']; if (guardedValue == null) return null; return GuestOsScanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vsphereScan: (() { final guardedValue = map['vsphereScan']; if (guardedValue == null) return null; return VSphereScanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
