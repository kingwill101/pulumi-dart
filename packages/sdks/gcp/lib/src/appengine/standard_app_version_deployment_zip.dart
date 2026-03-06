// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionDeploymentZip {
  /// files count
  final pulumi.Input<int>? filesCount;
  /// Source URL
  final pulumi.Input<String> sourceUrl;

  /// Creates a new [StandardAppVersionDeploymentZip].
  /// [filesCount] files count
  /// [sourceUrl] Source URL
  const StandardAppVersionDeploymentZip({
    this.filesCount,
    required this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesCount': ?filesCount,
      'sourceUrl': sourceUrl,
    };
  }

  factory StandardAppVersionDeploymentZip.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionDeploymentZip(
      filesCount: (() { final guardedValue = map['filesCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceUrl: pulumi.Input.fromValue(map['sourceUrl'] as String),
    );
  }
}

