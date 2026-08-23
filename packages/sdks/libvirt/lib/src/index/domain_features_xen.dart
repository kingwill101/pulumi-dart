// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_xen_e820host.dart';
import 'domain_features_xen_passthrough.dart';

class DomainFeaturesXen {
  /// Enables the use of the e820 memory map for the Xen hypervisor, improving memory management.
  final pulumi.Input<DomainFeaturesXenE820host>? e820host;
  /// Configures the passthrough feature for Xen, allowing direct access to host devices from the guest.
  final pulumi.Input<DomainFeaturesXenPassthrough>? passthrough;

  /// Creates a new [DomainFeaturesXen].
  /// [e820host] Enables the use of the e820 memory map for the Xen hypervisor, improving memory management.
  /// [passthrough] Configures the passthrough feature for Xen, allowing direct access to host devices from the guest.
  const DomainFeaturesXen({
    this.e820host,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'e820host': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesXenE820host, Map<String, dynamic>>(e820host, (value) => value.toMap()),
      'passthrough': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesXenPassthrough, Map<String, dynamic>>(passthrough, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesXen.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesXen(
      e820host: (() { final guardedValue = map['e820host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesXenE820host.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesXenPassthrough.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
