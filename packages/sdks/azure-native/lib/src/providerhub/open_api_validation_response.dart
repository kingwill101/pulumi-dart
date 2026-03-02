// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiValidationResponse {
  /// Indicates whether a non compliance response is allowed for a LIST call
  final pulumi.Input<bool>? allowNoncompliantCollectionResponse;

  /// Creates a new [OpenApiValidationResponse].
  /// [allowNoncompliantCollectionResponse] Indicates whether a non compliance response is allowed for a LIST call
  OpenApiValidationResponse({
    this.allowNoncompliantCollectionResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoncompliantCollectionResponse': ?allowNoncompliantCollectionResponse,
    };
  }

  factory OpenApiValidationResponse.fromMap(Map<String, dynamic> map) {
    return OpenApiValidationResponse(
      allowNoncompliantCollectionResponse: map['allowNoncompliantCollectionResponse'] == null ? null : (map['allowNoncompliantCollectionResponse'] as bool).input(),
    );
  }
}

