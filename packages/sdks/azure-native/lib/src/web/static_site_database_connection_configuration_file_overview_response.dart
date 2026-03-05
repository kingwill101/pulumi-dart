// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A database connection configuration file
class StaticSiteDatabaseConnectionConfigurationFileOverviewResponse {
  /// The Base64 encoding of the file contents.
  final pulumi.Input<String> contents;
  /// The name of the configuration file.
  final pulumi.Input<String> fileName;
  /// The type of configuration file.
  final pulumi.Input<String> type;

  /// Creates a new [StaticSiteDatabaseConnectionConfigurationFileOverviewResponse].
  /// [contents] The Base64 encoding of the file contents.
  /// [fileName] The name of the configuration file.
  /// [type] The type of configuration file.
  StaticSiteDatabaseConnectionConfigurationFileOverviewResponse({
    required this.contents,
    required this.fileName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'fileName': fileName,
      'type': type,
    };
  }

  factory StaticSiteDatabaseConnectionConfigurationFileOverviewResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteDatabaseConnectionConfigurationFileOverviewResponse(
      contents: pulumi.Input.fromValue(map['contents'] as String),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

