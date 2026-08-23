// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_federated_catalog_options_refresh_status_status.dart';

class IcebergCatalogFederatedCatalogOptionsRefreshStatus {
  /// Output only. The end time of the most recent refresh.
  final pulumi.Input<String>? endTime;
  /// Output only. The start time of the most recent refresh.
  final pulumi.Input<String>? startTime;
  /// Output only. The error result of the last failed refresh, if any.
  final pulumi.Input<List<IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus>>? statuses;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsRefreshStatus].
  /// [endTime] Output only. The end time of the most recent refresh.
  /// [startTime] Output only. The start time of the most recent refresh.
  /// [statuses] Output only. The error result of the last failed refresh, if any.
  const IcebergCatalogFederatedCatalogOptionsRefreshStatus({
    this.endTime,
    this.startTime,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsRefreshStatus.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsRefreshStatus(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus>(guardedValue, (value) => IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
