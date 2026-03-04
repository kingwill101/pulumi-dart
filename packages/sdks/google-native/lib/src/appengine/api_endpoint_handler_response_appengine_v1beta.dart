// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerResponseAppengineV1beta {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [ApiEndpointHandlerResponseAppengineV1beta].
  /// [scriptPath] Path to the script from the application root directory.
  ApiEndpointHandlerResponseAppengineV1beta({required this.scriptPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scriptPath': scriptPath};
  }

  factory ApiEndpointHandlerResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiEndpointHandlerResponseAppengineV1beta(
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}
