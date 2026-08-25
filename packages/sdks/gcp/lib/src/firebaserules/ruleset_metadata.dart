// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetMetadata {
  /// Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  final pulumi.Input<List<String>?>? services;

  /// Creates a new [RulesetMetadata].
  /// [services] Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  const RulesetMetadata({
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': ?services,
    };
  }

  factory RulesetMetadata.fromMap(Map<String, dynamic> map) {
    return RulesetMetadata(
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
