// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_turnstile_widget_filter.dart';

/// {@template pulumi_index_get_turnstile_widget_get_turnstile_widget_args_doc}
/// Arguments for getTurnstileWidget.
/// {@endtemplate}
/// {@macro pulumi_index_get_turnstile_widget_get_turnstile_widget_args_doc}
class GetTurnstileWidgetArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetTurnstileWidgetFilter?>? filter;
  /// Widget item identifier tag.
  final pulumi.Input<String?>? sitekey;

  /// Creates a new [GetTurnstileWidgetArgs].
  /// [accountId] Identifier
  /// [filter] Optional.
  /// [sitekey] Widget item identifier tag.
  const GetTurnstileWidgetArgs({
    this.accountId,
    this.filter,
    this.sitekey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetTurnstileWidgetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'sitekey': ?sitekey,
    };
  }

  factory GetTurnstileWidgetArgs.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTurnstileWidgetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sitekey: (() { final guardedValue = map['sitekey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
