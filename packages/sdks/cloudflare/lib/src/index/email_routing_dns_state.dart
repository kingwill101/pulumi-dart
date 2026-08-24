// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_dns_error.dart';
import 'email_routing_dns_message.dart';
import 'email_routing_dns_result.dart';
import 'email_routing_dns_result_info.dart';

/// Input properties used for looking up and filtering EmailRoutingDns resources.
class EmailRoutingDnsState {
  /// The date and time the settings have been created.
  final pulumi.Input<String?>? created;
  /// State of the zone settings for Email Routing.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<List<EmailRoutingDnsError>?>? errors;
  final pulumi.Input<List<EmailRoutingDnsMessage>?>? messages;
  /// The date and time the settings have been modified.
  final pulumi.Input<String?>? modified;
  /// Domain of your zone.
  final pulumi.Input<String?>? name;
  final pulumi.Input<EmailRoutingDnsResult?>? result;
  final pulumi.Input<EmailRoutingDnsResultInfo?>? resultInfo;
  /// Flag to check if the user skipped the configuration wizard.
  final pulumi.Input<bool?>? skipWizard;
  /// Show the state of your account, and the type or configuration error.
  /// Available values: "ready", "unconfigured", "misconfigured", "misconfigured/locked", "unlocked".
  final pulumi.Input<String?>? status;
  /// Whether the API call was successful.
  final pulumi.Input<bool?>? success;
  /// Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  final pulumi.Input<String?>? tag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [EmailRoutingDnsState].
  /// [created] The date and time the settings have been created.
  /// [enabled] State of the zone settings for Email Routing.
  /// [errors] Optional.
  /// [messages] Optional.
  /// [modified] The date and time the settings have been modified.
  /// [name] Domain of your zone.
  /// [result] Optional.
  /// [resultInfo] Optional.
  /// [skipWizard] Flag to check if the user skipped the configuration wizard.
  /// [status] Show the state of your account, and the type or configuration error.
  /// [success] Whether the API call was successful.
  /// [tag] Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  /// [zoneId] Identifier.
  const EmailRoutingDnsState({
    this.created,
    this.enabled,
    this.errors,
    this.messages,
    this.modified,
    this.name,
    this.result,
    this.resultInfo,
    this.skipWizard,
    this.status,
    this.success,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'enabled': ?enabled,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingDnsError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<EmailRoutingDnsError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messages': ?pulumi.Input.mapOptionalInputValue<List<EmailRoutingDnsMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<EmailRoutingDnsMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modified': ?modified,
      'name': ?name,
      'result': ?pulumi.Input.mapOptionalInputValue<EmailRoutingDnsResult, Map<String, dynamic>>(result, (value) => value.toMap()),
      'resultInfo': ?pulumi.Input.mapOptionalInputValue<EmailRoutingDnsResultInfo, Map<String, dynamic>>(resultInfo, (value) => value.toMap()),
      'skipWizard': ?skipWizard,
      'status': ?status,
      'success': ?success,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory EmailRoutingDnsState.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingDnsError>(guardedValue, (value) => EmailRoutingDnsError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailRoutingDnsMessage>(guardedValue, (value) => EmailRoutingDnsMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailRoutingDnsResult.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resultInfo: (() { final guardedValue = map['resultInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailRoutingDnsResultInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipWizard: (() { final guardedValue = map['skipWizard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
