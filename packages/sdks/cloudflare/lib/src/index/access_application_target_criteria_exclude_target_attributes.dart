// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationTargetCriteriaExcludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [AccessApplicationTargetCriteriaExcludeTargetAttributes].
  /// [hostnames] Required.
  const AccessApplicationTargetCriteriaExcludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory AccessApplicationTargetCriteriaExcludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return AccessApplicationTargetCriteriaExcludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
