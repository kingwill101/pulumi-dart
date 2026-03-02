// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneReverseLookupConfig {
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZoneReverseLookupConfig].
  /// [kind] Optional.
  ManagedZoneReverseLookupConfig({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ManagedZoneReverseLookupConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfig(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
    );
  }
}

