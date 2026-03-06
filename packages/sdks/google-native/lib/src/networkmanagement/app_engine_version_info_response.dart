// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with an App Engine version.
class AppEngineVersionInfoResponse {
  /// Name of an App Engine version.
  final pulumi.Input<String> displayName;
  /// App Engine execution environment for a version.
  final pulumi.Input<String> environment;
  /// Runtime of the App Engine version.
  final pulumi.Input<String> runtime;
  /// URI of an App Engine version.
  final pulumi.Input<String> uri;

  /// Creates a new [AppEngineVersionInfoResponse].
  /// [displayName] Name of an App Engine version.
  /// [environment] App Engine execution environment for a version.
  /// [runtime] Runtime of the App Engine version.
  /// [uri] URI of an App Engine version.
  const AppEngineVersionInfoResponse({
    required this.displayName,
    required this.environment,
    required this.runtime,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'environment': environment,
      'runtime': runtime,
      'uri': uri,
    };
  }

  factory AppEngineVersionInfoResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

