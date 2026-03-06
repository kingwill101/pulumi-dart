// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SwaggerSpecification {
  /// The api versions.
  final pulumi.Input<List<String>>? apiVersions;
  /// The swagger spec folder uri.
  final pulumi.Input<String>? swaggerSpecFolderUri;

  /// Creates a new [SwaggerSpecification].
  /// [apiVersions] The api versions.
  /// [swaggerSpecFolderUri] The swagger spec folder uri.
  const SwaggerSpecification({
    this.apiVersions,
    this.swaggerSpecFolderUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'swaggerSpecFolderUri': ?swaggerSpecFolderUri,
    };
  }

  factory SwaggerSpecification.fromMap(Map<String, dynamic> map) {
    return SwaggerSpecification(
      apiVersions: (() { final guardedValue = map['apiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      swaggerSpecFolderUri: (() { final guardedValue = map['swaggerSpecFolderUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

