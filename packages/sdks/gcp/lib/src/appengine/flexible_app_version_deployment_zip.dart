// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionDeploymentZip {
  /// files count
  final pulumi.Input<int>? filesCount;
  /// Source URL
  final pulumi.Input<String> sourceUrl;

  /// Creates a new [FlexibleAppVersionDeploymentZip].
  /// [filesCount] files count
  /// [sourceUrl] Source URL
  FlexibleAppVersionDeploymentZip({
    this.filesCount,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesCount': ?filesCount,
      'sourceUrl': sourceUrl,
    };
  }

  factory FlexibleAppVersionDeploymentZip.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentZip(
      filesCount: map['filesCount'] == null ? null : (map['filesCount']! as int).input(),
      sourceUrl: (map['sourceUrl'] as String).input(),
    );
  }
}

