// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationTargetCriteriaIncludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [AccessApplicationTargetCriteriaIncludeTargetAttributes].
  /// [hostnames] Required.
  const AccessApplicationTargetCriteriaIncludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory AccessApplicationTargetCriteriaIncludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return AccessApplicationTargetCriteriaIncludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
