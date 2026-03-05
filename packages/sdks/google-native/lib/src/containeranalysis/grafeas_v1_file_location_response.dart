// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the location at which a package was found.
class GrafeasV1FileLocationResponse {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final pulumi.Input<String> filePath;

  /// Creates a new [GrafeasV1FileLocationResponse].
  /// [filePath] For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  GrafeasV1FileLocationResponse({
    required this.filePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
    };
  }

  factory GrafeasV1FileLocationResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1FileLocationResponse(
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
    );
  }
}

