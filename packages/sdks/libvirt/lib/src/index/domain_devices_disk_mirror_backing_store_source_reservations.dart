// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_reservations_source.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservations {
  /// Controls whether reservations are enabled for the network storage source.
  final String? enabled;
  /// Specifies if the reservations are managed by a higher-level resource management layer.
  final bool? managed;
  /// Configures the source from which reservations are allocated for network storage.
  final DomainDevicesDiskMirrorBackingStoreSourceReservationsSource? source;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservations].
  /// [enabled] Controls whether reservations are enabled for the network storage source.
  /// [managed] Specifies if the reservations are managed by a higher-level resource management layer.
  /// [source] Configures the source from which reservations are allocated for network storage.
  DomainDevicesDiskMirrorBackingStoreSourceReservations({
    this.enabled,
    this.managed,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'managed': ?managed,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservations.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservations(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      managed: map['managed'] == null ? null : map['managed'] as bool,
      source: map['source'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceReservationsSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

