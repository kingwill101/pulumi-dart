// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_reservations_source.dart';

class DomainOsNvRamSourceReservations {
  /// Controls whether reservations are enabled for the network storage source.
  final String? enabled;
  /// Specifies if the reservations are managed by a higher-level resource management layer.
  final bool? managed;
  /// Configures the source from which reservations are allocated for network storage.
  final DomainOsNvRamSourceReservationsSource? source;

  /// Creates a new [DomainOsNvRamSourceReservations].
  /// [enabled] Controls whether reservations are enabled for the network storage source.
  /// [managed] Specifies if the reservations are managed by a higher-level resource management layer.
  /// [source] Configures the source from which reservations are allocated for network storage.
  DomainOsNvRamSourceReservations({
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

  factory DomainOsNvRamSourceReservations.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservations(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      managed: map['managed'] == null ? null : map['managed'] as bool,
      source: map['source'] == null ? null : DomainOsNvRamSourceReservationsSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

