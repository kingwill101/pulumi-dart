// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [AccessGroupExcludeCommonName].
  /// [commonName] The common name to match.
  const AccessGroupExcludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory AccessGroupExcludeCommonName.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
