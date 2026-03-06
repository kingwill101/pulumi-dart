// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GCPolicyMaxVersion {
  /// Number of version before applying the GC policy.
  ///
  /// -----
  /// `gc_rules` include 2 fields:
  final pulumi.Input<int> number;

  /// Creates a new [GCPolicyMaxVersion].
  /// [number] Number of version before applying the GC policy.
  const GCPolicyMaxVersion({
    required this.number,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
    };
  }

  factory GCPolicyMaxVersion.fromMap(Map<String, dynamic> map) {
    return GCPolicyMaxVersion(
      number: pulumi.Input.fromValue(map['number'] as int),
    );
  }
}

