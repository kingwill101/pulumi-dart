// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Definitions
class ApiResourceDefinitions {
  /// The modified swagger URL
  final pulumi.Input<String>? modifiedSwaggerUrl;
  /// The original swagger URL
  final pulumi.Input<String>? originalSwaggerUrl;

  /// Creates a new [ApiResourceDefinitions].
  /// [modifiedSwaggerUrl] The modified swagger URL
  /// [originalSwaggerUrl] The original swagger URL
  ApiResourceDefinitions({
    this.modifiedSwaggerUrl,
    this.originalSwaggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedSwaggerUrl': ?modifiedSwaggerUrl,
      'originalSwaggerUrl': ?originalSwaggerUrl,
    };
  }

  factory ApiResourceDefinitions.fromMap(Map<String, dynamic> map) {
    return ApiResourceDefinitions(
      modifiedSwaggerUrl: map['modifiedSwaggerUrl'] == null ? null : (map['modifiedSwaggerUrl']! as String).input(),
      originalSwaggerUrl: map['originalSwaggerUrl'] == null ? null : (map['originalSwaggerUrl']! as String).input(),
    );
  }
}

