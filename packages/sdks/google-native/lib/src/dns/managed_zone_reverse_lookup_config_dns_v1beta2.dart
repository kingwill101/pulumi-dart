// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneReverseLookupConfigDnsV1beta2 {
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZoneReverseLookupConfigDnsV1beta2].
  /// [kind] Optional.
  const ManagedZoneReverseLookupConfigDnsV1beta2({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ManagedZoneReverseLookupConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigDnsV1beta2(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
