// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_block_sender_filter.dart';

/// {@template pulumi_index_get_email_security_block_sender_get_email_security_block_sender_args_doc}
/// Arguments for getEmailSecurityBlockSender.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_block_sender_get_email_security_block_sender_args_doc}
class GetEmailSecurityBlockSenderArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetEmailSecurityBlockSenderFilter?>? filter;
  final pulumi.Input<String?>? patternId;

  /// Creates a new [GetEmailSecurityBlockSenderArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [patternId] Optional.
  const GetEmailSecurityBlockSenderArgs({
    this.accountId,
    this.filter,
    this.patternId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailSecurityBlockSenderFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'patternId': ?patternId,
    };
  }

  factory GetEmailSecurityBlockSenderArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSenderArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailSecurityBlockSenderFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      patternId: (() { final guardedValue = map['patternId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
