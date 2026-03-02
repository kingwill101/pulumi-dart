// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionDeploymentFile {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// SHA1 checksum of the file
  final pulumi.Input<String>? sha1Sum;
  /// Source URL
  final pulumi.Input<String> sourceUrl;

  /// Creates a new [FlexibleAppVersionDeploymentFile].
  /// [name] The identifier for this object. Format specified above.
  /// [sha1Sum] SHA1 checksum of the file
  /// [sourceUrl] Source URL
  FlexibleAppVersionDeploymentFile({
    required this.name,
    this.sha1Sum,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sha1Sum': ?sha1Sum,
      'sourceUrl': sourceUrl,
    };
  }

  factory FlexibleAppVersionDeploymentFile.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentFile(
      name: (map['name'] as String).input(),
      sha1Sum: map['sha1Sum'] == null ? null : (map['sha1Sum']! as String).input(),
      sourceUrl: (map['sourceUrl'] as String).input(),
    );
  }
}

