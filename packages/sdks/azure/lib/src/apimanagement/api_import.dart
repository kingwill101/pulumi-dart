// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_import_wsdl_selector.dart';

class ApiImport {
  /// The format of the content from which the API Definition should be imported. Possible values are: `openapi`, `openapi+json`, `openapi+json-link`, `openapi-link`, `swagger-json`, `swagger-link-json`, `wadl-link-json`, `wadl-xml`, `wsdl` and `wsdl-link`.
  final pulumi.Input<String> contentFormat;
  /// The Content from which the API Definition should be imported. When a `contentFormat` of `*-link-*` is specified this must be a URL, otherwise this must be defined inline. The URL must be accessible and return a valid document; otherwise, deployment may fail.
  final pulumi.Input<String> contentValue;
  /// A `wsdlSelector` block as defined below, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when `contentFormat` is `wsdl` or `wsdl-link`.
  final pulumi.Input<ApiImportWsdlSelector>? wsdlSelector;

  /// Creates a new [ApiImport].
  /// [contentFormat] The format of the content from which the API Definition should be imported. Possible values are: `openapi`, `openapi+json`, `openapi+json-link`, `openapi-link`, `swagger-json`, `swagger-link-json`, `wadl-link-json`, `wadl-xml`, `wsdl` and `wsdl-link`.
  /// [contentValue] The Content from which the API Definition should be imported. When a `contentFormat` of `*-link-*` is specified this must be a URL, otherwise this must be defined inline. The URL must be accessible and return a valid document; otherwise, deployment may fail.
  /// [wsdlSelector] A `wsdlSelector` block as defined below, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when `contentFormat` is `wsdl` or `wsdl-link`.
  const ApiImport({
    required this.contentFormat,
    required this.contentValue,
    this.wsdlSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentFormat': contentFormat,
      'contentValue': contentValue,
      'wsdlSelector': ?pulumi.Input.mapOptionalInputValue<ApiImportWsdlSelector, Map<String, dynamic>>(wsdlSelector, (value) => value.toMap()),
    };
  }

  factory ApiImport.fromMap(Map<String, dynamic> map) {
    return ApiImport(
      contentFormat: pulumi.Input.fromValue(map['contentFormat'] as String),
      contentValue: pulumi.Input.fromValue(map['contentValue'] as String),
      wsdlSelector: (() { final guardedValue = map['wsdlSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiImportWsdlSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
