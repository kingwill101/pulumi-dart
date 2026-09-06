// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Definitions
class ApiResourceDefinitionsResponse {
  /// The modified swagger URL
  final pulumi.Input<String?>? modifiedSwaggerUrl;
  /// The original swagger URL
  final pulumi.Input<String?>? originalSwaggerUrl;

  /// Creates a new [ApiResourceDefinitionsResponse].
  /// [modifiedSwaggerUrl] The modified swagger URL
  /// [originalSwaggerUrl] The original swagger URL
  const ApiResourceDefinitionsResponse({
    this.modifiedSwaggerUrl,
    this.originalSwaggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedSwaggerUrl': ?modifiedSwaggerUrl,
      'originalSwaggerUrl': ?originalSwaggerUrl,
    };
  }

  factory ApiResourceDefinitionsResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceDefinitionsResponse(
      modifiedSwaggerUrl: (() { final guardedValue = map['modifiedSwaggerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalSwaggerUrl: (() { final guardedValue = map['originalSwaggerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
