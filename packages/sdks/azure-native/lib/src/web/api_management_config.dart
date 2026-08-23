// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure API management (APIM) configuration linked to the app.
class ApiManagementConfig {
  /// APIM-Api Identifier.
  final pulumi.Input<String>? id;

  /// Creates a new [ApiManagementConfig].
  /// [id] APIM-Api Identifier.
  const ApiManagementConfig({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ApiManagementConfig.fromMap(Map<String, dynamic> map) {
    return ApiManagementConfig(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
