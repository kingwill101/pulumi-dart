// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsdl_service.dart';

/// {@template pulumi_web_list_custom_api_wsdl_interfaces_args_doc}
/// Arguments for listCustomApiWsdlInterfaces.
/// {@endtemplate}
/// {@macro pulumi_web_list_custom_api_wsdl_interfaces_args_doc}
class ListCustomApiWsdlInterfacesArgs {
  /// The WSDL content
  final pulumi.Input<String>? content;
  /// The WSDL import method
  final pulumi.Input<String>? importMethod;
  /// The location
  final pulumi.Input<String> location;
  /// The service with name and endpoint names
  final pulumi.Input<WsdlService>? service;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// The WSDL URL
  final pulumi.Input<String>? url;

  /// Creates a new [ListCustomApiWsdlInterfacesArgs].
  /// [content] The WSDL content
  /// [importMethod] The WSDL import method
  /// [location] The location
  /// [service] The service with name and endpoint names
  /// [subscriptionId] Subscription Id
  /// [url] The WSDL URL
  ListCustomApiWsdlInterfacesArgs({
    this.content,
    this.importMethod,
    required this.location,
    this.service,
    this.subscriptionId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'importMethod': ?importMethod,
      'location': location,
      'service': ?pulumi.Input.mapOptionalInputValue<WsdlService, Map<String, dynamic>>(service, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'url': ?url,
    };
  }

  factory ListCustomApiWsdlInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return ListCustomApiWsdlInterfacesArgs(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importMethod: (() { final guardedValue = map['importMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WsdlService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

