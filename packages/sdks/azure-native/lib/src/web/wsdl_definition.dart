// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsdl_service.dart';

/// The WSDL definition
class WsdlDefinition {
  /// The WSDL content
  final pulumi.Input<String>? content;
  /// The WSDL import method
  final pulumi.Input<String>? importMethod;
  /// The service with name and endpoint names
  final pulumi.Input<WsdlService>? service;
  /// The WSDL URL
  final pulumi.Input<String>? url;

  /// Creates a new [WsdlDefinition].
  /// [content] The WSDL content
  /// [importMethod] The WSDL import method
  /// [service] The service with name and endpoint names
  /// [url] The WSDL URL
  const WsdlDefinition({
    this.content,
    this.importMethod,
    this.service,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'importMethod': ?importMethod,
      'service': ?pulumi.Input.mapOptionalInputValue<WsdlService, Map<String, dynamic>>(service, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory WsdlDefinition.fromMap(Map<String, dynamic> map) {
    return WsdlDefinition(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importMethod: (() { final guardedValue = map['importMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WsdlService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
