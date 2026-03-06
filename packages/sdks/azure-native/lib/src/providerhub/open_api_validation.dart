// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiValidation {
  /// Indicates whether a non compliance response is allowed for a LIST call
  final pulumi.Input<bool>? allowNoncompliantCollectionResponse;

  /// Creates a new [OpenApiValidation].
  /// [allowNoncompliantCollectionResponse] Indicates whether a non compliance response is allowed for a LIST call
  const OpenApiValidation({
    this.allowNoncompliantCollectionResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoncompliantCollectionResponse': ?allowNoncompliantCollectionResponse,
    };
  }

  factory OpenApiValidation.fromMap(Map<String, dynamic> map) {
    return OpenApiValidation(
      allowNoncompliantCollectionResponse: (() { final guardedValue = map['allowNoncompliantCollectionResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

