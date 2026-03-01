// ignore_for_file: unused_element, unnecessary_cast

import 'domain_features_xen_e820host.dart';
import 'domain_features_xen_passthrough.dart';

class DomainFeaturesXen {
  /// Enables the use of the e820 memory map for the Xen hypervisor, improving memory management.
  final DomainFeaturesXenE820host? e820host;
  /// Configures the passthrough feature for Xen, allowing direct access to host devices from the guest.
  final DomainFeaturesXenPassthrough? passthrough;

  /// Creates a new [DomainFeaturesXen].
  /// [e820host] Enables the use of the e820 memory map for the Xen hypervisor, improving memory management.
  /// [passthrough] Configures the passthrough feature for Xen, allowing direct access to host devices from the guest.
  DomainFeaturesXen({
    this.e820host,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'e820host': ?e820host == null ? null : e820host!.toMap(),
      'passthrough': ?passthrough == null ? null : passthrough!.toMap(),
    };
  }

  factory DomainFeaturesXen.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesXen(
      e820host: map['e820host'] == null ? null : DomainFeaturesXenE820host.fromMap((map['e820host'] as Map).cast<String, dynamic>()),
      passthrough: map['passthrough'] == null ? null : DomainFeaturesXenPassthrough.fromMap((map['passthrough'] as Map).cast<String, dynamic>()),
    );
  }
}

