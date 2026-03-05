// ignore_for_file: unused_element, unnecessary_cast

import 'guest_os_scan_response.dart';
import 'vsphere_scan_response.dart';

/// Result data returned by getCollector.
class GetCollectorResult {
  /// Store cloud storage bucket name (which is a guid) created with this Collector.
  final String bucket;
  /// Client version.
  final String clientVersion;
  /// How many days to collect data.
  final int collectionDays;
  /// Create time stamp.
  final String createTime;
  /// User specified description of the Collector.
  final String description;
  /// User specified name of the Collector.
  final String displayName;
  /// Uri for EULA (End User License Agreement) from customer.
  final String eulaUri;
  /// User specified expected asset count.
  final String expectedAssetCount;
  /// Reference to MC Source Guest Os Scan.
  final GuestOsScanResponse guestOsScan;
  /// Labels as key value pairs.
  final Map<String, String> labels;
  /// name of resource.
  final String name;
  /// Service Account email used to ingest data to this Collector.
  final String serviceAccount;
  /// State of the Collector.
  final String state;
  /// Update time stamp.
  final String updateTime;
  /// Reference to MC Source vsphere_scan.
  final VSphereScanResponse vsphereScan;

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
  GetCollectorResult({
    required this.bucket,
    required this.clientVersion,
    required this.collectionDays,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.eulaUri,
    required this.expectedAssetCount,
    required this.guestOsScan,
    required this.labels,
    required this.name,
    required this.serviceAccount,
    required this.state,
    required this.updateTime,
    required this.vsphereScan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'clientVersion': clientVersion,
      'collectionDays': collectionDays,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'eulaUri': eulaUri,
      'expectedAssetCount': expectedAssetCount,
      'guestOsScan': guestOsScan.toMap(),
      'labels': labels,
      'name': name,
      'serviceAccount': serviceAccount,
      'state': state,
      'updateTime': updateTime,
      'vsphereScan': vsphereScan.toMap(),
    };
  }

  factory GetCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetCollectorResult(
      bucket: map['bucket'] as String,
      clientVersion: map['clientVersion'] as String,
      collectionDays: map['collectionDays'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      eulaUri: map['eulaUri'] as String,
      expectedAssetCount: map['expectedAssetCount'] as String,
      guestOsScan: GuestOsScanResponse.fromMap((map['guestOsScan']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vsphereScan: VSphereScanResponse.fromMap((map['vsphereScan']! as Map).cast<String, dynamic>()),
    );
  }
}

