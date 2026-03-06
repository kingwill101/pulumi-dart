// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_reservations_source.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservations {
  /// Controls whether reservations are enabled for the network storage source.
  final pulumi.Input<String>? enabled;
  /// Specifies if the reservations are managed by a higher-level resource management layer.
  final pulumi.Input<bool>? managed;
  /// Configures the source from which reservations are allocated for network storage.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSource>? source;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservations].
  /// [enabled] Controls whether reservations are enabled for the network storage source.
  /// [managed] Specifies if the reservations are managed by a higher-level resource management layer.
  /// [source] Configures the source from which reservations are allocated for network storage.
  const DomainDevicesDiskMirrorBackingStoreSourceReservations({
    this.enabled,
    this.managed,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'managed': ?managed,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservations.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservations(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreSourceReservationsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

