// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule {
  /// The interval between metadata refreshes, expressed as a duration
  /// string (e.g., `300s`).
  /// The value must be at least 300s or 0s to disable refresh.
  final pulumi.Input<String?>? refreshInterval;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule].
  /// [refreshInterval] The interval between metadata refreshes, expressed as a duration
  const IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule({
    this.refreshInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshInterval': ?refreshInterval,
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule(
      refreshInterval: (() { final guardedValue = map['refreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
