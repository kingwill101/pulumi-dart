// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneReverseLookupConfigResponse {
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedZoneReverseLookupConfigResponse].
  /// [kind] Required.
  const ManagedZoneReverseLookupConfigResponse({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ManagedZoneReverseLookupConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

