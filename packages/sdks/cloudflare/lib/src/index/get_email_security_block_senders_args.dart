// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_security_block_senders_get_email_security_block_senders_args_doc}
/// Arguments for getEmailSecurityBlockSenders.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_block_senders_get_email_security_block_senders_args_doc}
class GetEmailSecurityBlockSendersArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? pattern;
  final pulumi.Input<String?>? patternType;
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityBlockSendersArgs].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [maxItems] Optional.
  /// [order] Optional.
  /// [pattern] Optional.
  /// [patternType] Optional.
  /// [search] Optional.
  const GetEmailSecurityBlockSendersArgs({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.pattern,
    this.patternType,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'pattern': ?pattern,
      'patternType': ?patternType,
      'search': ?search,
    };
  }

  factory GetEmailSecurityBlockSendersArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityBlockSendersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
