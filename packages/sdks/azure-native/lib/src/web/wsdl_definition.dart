// ignore_for_file: unused_element, unnecessary_cast

import 'wsdl_service.dart';

/// The WSDL definition
class WsdlDefinition {
  /// The WSDL content
  final String? content;
  /// The WSDL import method
  final String? importMethod;
  /// The service with name and endpoint names
  final WsdlService? service;
  /// The WSDL URL
  final String? url;

  /// Creates a new [WsdlDefinition].
  /// [content] The WSDL content
  /// [importMethod] The WSDL import method
  /// [service] The service with name and endpoint names
  /// [url] The WSDL URL
  WsdlDefinition({
    this.content,
    this.importMethod,
    this.service,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'importMethod': ?importMethod,
      'service': ?service == null ? null : service!.toMap(),
      'url': ?url,
    };
  }

  factory WsdlDefinition.fromMap(Map<String, dynamic> map) {
    return WsdlDefinition(
      content: map['content'] == null ? null : map['content'] as String,
      importMethod: map['importMethod'] == null ? null : map['importMethod'] as String,
      service: map['service'] == null ? null : WsdlService.fromMap((map['service'] as Map).cast<String, dynamic>()),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

