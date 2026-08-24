// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_dns_message_source.dart';

class GetEmailRoutingDnsMessage {
  final pulumi.Input<int> code;
  final pulumi.Input<String> documentationUrl;
  final pulumi.Input<String> message;
  final pulumi.Input<GetEmailRoutingDnsMessageSource> source;

  /// Creates a new [GetEmailRoutingDnsMessage].
  /// [code] Required.
  /// [documentationUrl] Required.
  /// [message] Required.
  /// [source] Required.
  const GetEmailRoutingDnsMessage({
    required this.code,
    required this.documentationUrl,
    required this.message,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'documentationUrl': documentationUrl,
      'message': message,
      'source': pulumi.Input.mapInputValue<GetEmailRoutingDnsMessageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GetEmailRoutingDnsMessage.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsMessage(
      code: pulumi.Input.fromValue((map['code'] as num).toInt()),
      documentationUrl: pulumi.Input.fromValue(map['documentationUrl'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      source: pulumi.Input.fromValue(GetEmailRoutingDnsMessageSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
