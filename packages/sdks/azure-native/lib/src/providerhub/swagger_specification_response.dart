// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SwaggerSpecificationResponse {
  /// The api versions.
  final pulumi.Input<List<String>>? apiVersions;
  /// The swagger spec folder uri.
  final pulumi.Input<String>? swaggerSpecFolderUri;

  /// Creates a new [SwaggerSpecificationResponse].
  /// [apiVersions] The api versions.
  /// [swaggerSpecFolderUri] The swagger spec folder uri.
  SwaggerSpecificationResponse({
    this.apiVersions,
    this.swaggerSpecFolderUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'swaggerSpecFolderUri': ?swaggerSpecFolderUri,
    };
  }

  factory SwaggerSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SwaggerSpecificationResponse(
      apiVersions: map['apiVersions'] == null ? null : ((map['apiVersions'] as List).cast<String>()).input(),
      swaggerSpecFolderUri: map['swaggerSpecFolderUri'] == null ? null : (map['swaggerSpecFolderUri'] as String).input(),
    );
  }
}

