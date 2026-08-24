// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_dns_error.dart';
import 'get_email_routing_dns_message.dart';
import 'get_email_routing_dns_result.dart';
import 'get_email_routing_dns_result_info.dart';

/// Result data returned by getEmailRoutingDns.
class GetEmailRoutingDnsInvokeResult {
  final List<GetEmailRoutingDnsError>? errors;
  /// Identifier.
  final String? id;
  final List<GetEmailRoutingDnsMessage>? messages;
  final GetEmailRoutingDnsResult? result;
  final GetEmailRoutingDnsResultInfo? resultInfo;
  /// Domain of your zone.
  final String? subdomain;
  /// Whether the API call was successful.
  final bool? success;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingDnsInvokeResult].
  /// [errors] Optional.
  /// [id] Identifier.
  /// [messages] Optional.
  /// [result] Optional.
  /// [resultInfo] Optional.
  /// [subdomain] Domain of your zone.
  /// [success] Whether the API call was successful.
  /// [zoneId] Identifier.
  const GetEmailRoutingDnsInvokeResult({
    this.errors,
    this.id,
    this.messages,
    this.result,
    this.resultInfo,
    this.subdomain,
    this.success,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingDnsError, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'messages': ?(() { final guardedValue = messages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailRoutingDnsMessage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'result': ?result?.toMap(),
      'resultInfo': ?resultInfo?.toMap(),
      'subdomain': ?subdomain,
      'success': ?success,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingDnsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsInvokeResult(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingDnsError>(guardedValue, (value) => GetEmailRoutingDnsError.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailRoutingDnsMessage>(guardedValue, (value) => GetEmailRoutingDnsMessage.fromMap((value as Map).cast<String, dynamic>())); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return GetEmailRoutingDnsResult.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resultInfo: (() { final guardedValue = map['resultInfo']; if (guardedValue == null) return null; return GetEmailRoutingDnsResultInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
