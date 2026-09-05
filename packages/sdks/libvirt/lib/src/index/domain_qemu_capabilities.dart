// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_qemu_capabilities_add.dart';
import 'domain_qemu_capabilities_del.dart';

class DomainQemuCapabilities {
  /// Lists QEMU capabilities to add explicitly for this domain.
  final pulumi.Input<List<DomainQemuCapabilitiesAdd>?>? adds;
  /// Lists QEMU capabilities to remove explicitly for this domain.
  final pulumi.Input<List<DomainQemuCapabilitiesDel>?>? dels;

  /// Creates a new [DomainQemuCapabilities].
  /// [adds] Lists QEMU capabilities to add explicitly for this domain.
  /// [dels] Lists QEMU capabilities to remove explicitly for this domain.
  const DomainQemuCapabilities({
    this.adds,
    this.dels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adds': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuCapabilitiesAdd>, List<Map<String, dynamic>>>(adds, (value) => pulumi.Input.encodeList<DomainQemuCapabilitiesAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dels': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuCapabilitiesDel>, List<Map<String, dynamic>>>(dels, (value) => pulumi.Input.encodeList<DomainQemuCapabilitiesDel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainQemuCapabilities.fromMap(Map<String, dynamic> map) {
    return DomainQemuCapabilities(
      adds: (() { final guardedValue = map['adds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuCapabilitiesAdd>(guardedValue, (value) => DomainQemuCapabilitiesAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dels: (() { final guardedValue = map['dels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuCapabilitiesDel>(guardedValue, (value) => DomainQemuCapabilitiesDel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
