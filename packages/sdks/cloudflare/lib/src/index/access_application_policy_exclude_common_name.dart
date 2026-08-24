// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [AccessApplicationPolicyExcludeCommonName].
  /// [commonName] The common name to match.
  const AccessApplicationPolicyExcludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory AccessApplicationPolicyExcludeCommonName.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
