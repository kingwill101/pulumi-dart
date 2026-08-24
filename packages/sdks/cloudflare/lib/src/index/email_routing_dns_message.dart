// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_dns_message_source.dart';

class EmailRoutingDnsMessage {
  final pulumi.Input<int?>? code;
  final pulumi.Input<String?>? documentationUrl;
  final pulumi.Input<String?>? message;
  final pulumi.Input<EmailRoutingDnsMessageSource?>? source;

  /// Creates a new [EmailRoutingDnsMessage].
  /// [code] Optional.
  /// [documentationUrl] Optional.
  /// [message] Optional.
  /// [source] Optional.
  const EmailRoutingDnsMessage({
    this.code,
    this.documentationUrl,
    this.message,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'documentationUrl': ?documentationUrl,
      'message': ?message,
      'source': ?pulumi.Input.mapOptionalInputValue<EmailRoutingDnsMessageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory EmailRoutingDnsMessage.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsMessage(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      documentationUrl: (() { final guardedValue = map['documentationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailRoutingDnsMessageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
