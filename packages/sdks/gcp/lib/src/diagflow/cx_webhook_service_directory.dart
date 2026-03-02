// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_service_directory_generic_web_service.dart';

class CxWebhookServiceDirectory {
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectoryGenericWebService>? genericWebService;
  /// The name of Service Directory service.
  final pulumi.Input<String> service;

  /// Creates a new [CxWebhookServiceDirectory].
  /// [genericWebService] Represents configuration for a generic web service.
  /// [service] The name of Service Directory service.
  CxWebhookServiceDirectory({
    this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<CxWebhookServiceDirectoryGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'service': service,
    };
  }

  factory CxWebhookServiceDirectory.fromMap(Map<String, dynamic> map) {
    return CxWebhookServiceDirectory(
      genericWebService: map['genericWebService'] == null ? null : (CxWebhookServiceDirectoryGenericWebService.fromMap((map['genericWebService']! as Map).cast<String, dynamic>())).input(),
      service: (map['service'] as String).input(),
    );
  }
}

