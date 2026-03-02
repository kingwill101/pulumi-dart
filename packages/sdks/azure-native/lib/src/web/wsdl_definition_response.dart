// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsdl_service_response.dart';

/// The WSDL definition
class WsdlDefinitionResponse {
  /// The WSDL content
  final pulumi.Input<String>? content;
  /// The WSDL import method
  final pulumi.Input<String>? importMethod;
  /// The service with name and endpoint names
  final pulumi.Input<WsdlServiceResponse>? service;
  /// The WSDL URL
  final pulumi.Input<String>? url;

  /// Creates a new [WsdlDefinitionResponse].
  /// [content] The WSDL content
  /// [importMethod] The WSDL import method
  /// [service] The service with name and endpoint names
  /// [url] The WSDL URL
  WsdlDefinitionResponse({
    this.content,
    this.importMethod,
    this.service,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'importMethod': ?importMethod,
      'service': ?pulumi.Input.mapOptionalInputValue<WsdlServiceResponse, Map<String, dynamic>>(service, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory WsdlDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return WsdlDefinitionResponse(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      importMethod: map['importMethod'] == null ? null : (map['importMethod']! as String).input(),
      service: map['service'] == null ? null : (WsdlServiceResponse.fromMap((map['service']! as Map).cast<String, dynamic>())).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

