// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerResponse {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [ApiEndpointHandlerResponse].
  /// [scriptPath] Path to the script from the application root directory.
  const ApiEndpointHandlerResponse({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory ApiEndpointHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandlerResponse(
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}

