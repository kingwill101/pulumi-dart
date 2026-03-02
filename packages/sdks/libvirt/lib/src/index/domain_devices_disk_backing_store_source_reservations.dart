// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source.dart';

class DomainDevicesDiskBackingStoreSourceReservations {
  /// Controls whether reservations are enabled for the network storage source.
  final pulumi.Input<String>? enabled;
  /// Specifies if the reservations are managed by a higher-level resource management layer.
  final pulumi.Input<bool>? managed;
  /// Configures the source from which reservations are allocated for network storage.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceReservationsSource>? source;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservations].
  /// [enabled] Controls whether reservations are enabled for the network storage source.
  /// [managed] Specifies if the reservations are managed by a higher-level resource management layer.
  /// [source] Configures the source from which reservations are allocated for network storage.
  DomainDevicesDiskBackingStoreSourceReservations({
    this.enabled,
    this.managed,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'managed': ?managed,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceReservationsSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservations.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservations(
      enabled: map['enabled'] == null ? null : (map['enabled'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      source: map['source'] == null ? null : (DomainDevicesDiskBackingStoreSourceReservationsSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

