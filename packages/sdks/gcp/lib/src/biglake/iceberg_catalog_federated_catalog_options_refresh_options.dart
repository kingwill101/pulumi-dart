// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_federated_catalog_options_refresh_options_refresh_schedule.dart';
import 'iceberg_catalog_federated_catalog_options_refresh_options_refresh_scope.dart';

class IcebergCatalogFederatedCatalogOptionsRefreshOptions {
  /// Schedule for periodic metadata refresh.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule>? refreshSchedule;
  /// Scope of metadata to synchronize from the remote catalog.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope>? refreshScope;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsRefreshOptions].
  /// [refreshSchedule] Schedule for periodic metadata refresh.
  /// [refreshScope] Scope of metadata to synchronize from the remote catalog.
  const IcebergCatalogFederatedCatalogOptionsRefreshOptions({
    this.refreshSchedule,
    this.refreshScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshSchedule': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule, Map<String, dynamic>>(refreshSchedule, (value) => value.toMap()),
      'refreshScope': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope, Map<String, dynamic>>(refreshScope, (value) => value.toMap()),
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsRefreshOptions.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsRefreshOptions(
      refreshSchedule: (() { final guardedValue = map['refreshSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshScope: (() { final guardedValue = map['refreshScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
