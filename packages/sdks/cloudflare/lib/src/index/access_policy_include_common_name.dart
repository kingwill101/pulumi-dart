// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [AccessPolicyIncludeCommonName].
  /// [commonName] The common name to match.
  const AccessPolicyIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory AccessPolicyIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
