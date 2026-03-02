// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source.dart';

class DomainDevicesDiskMirrorSourceReservations {
  /// Controls whether reservations are enabled for the network storage source.
  final pulumi.Input<String>? enabled;
  /// Specifies if the reservations are managed by a higher-level resource management layer.
  final pulumi.Input<bool>? managed;
  /// Configures the source from which reservations are allocated for network storage.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSource>? source;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservations].
  /// [enabled] Controls whether reservations are enabled for the network storage source.
  /// [managed] Specifies if the reservations are managed by a higher-level resource management layer.
  /// [source] Configures the source from which reservations are allocated for network storage.
  DomainDevicesDiskMirrorSourceReservations({
    this.enabled,
    this.managed,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'managed': ?managed,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservations.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservations(
      enabled: map['enabled'] == null ? null : (map['enabled'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      source: map['source'] == null ? null : (DomainDevicesDiskMirrorSourceReservationsSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

