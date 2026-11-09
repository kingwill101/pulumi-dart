// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationTargetCriteriaRequireTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [AccessApplicationTargetCriteriaRequireTargetAttributes].
  /// [hostnames] Required.
  const AccessApplicationTargetCriteriaRequireTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory AccessApplicationTargetCriteriaRequireTargetAttributes.fromMap(Map<String, dynamic> map) {
    return AccessApplicationTargetCriteriaRequireTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
