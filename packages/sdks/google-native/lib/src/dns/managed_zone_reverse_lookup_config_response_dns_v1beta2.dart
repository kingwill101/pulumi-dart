// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneReverseLookupConfigResponseDnsV1beta2 {
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedZoneReverseLookupConfigResponseDnsV1beta2].
  /// [kind] Required.
  ManagedZoneReverseLookupConfigResponseDnsV1beta2({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ManagedZoneReverseLookupConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponseDnsV1beta2(
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

