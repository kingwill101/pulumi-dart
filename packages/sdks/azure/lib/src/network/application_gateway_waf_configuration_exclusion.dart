// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayWafConfigurationExclusion {
  /// Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames` and `RequestHeaderValues`
  final pulumi.Input<String> matchVariable;
  /// String value which will be used for the filter operation. If empty will exclude all traffic on this `matchVariable`
  final pulumi.Input<String?>? selector;
  /// Operator which will be used to search in the variable content. Possible values are `Contains`, `EndsWith`, `Equals`, `EqualsAny` and `StartsWith`. If empty will exclude all traffic on this `matchVariable`
  final pulumi.Input<String?>? selectorMatchOperator;

  /// Creates a new [ApplicationGatewayWafConfigurationExclusion].
  /// [matchVariable] Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames` and `RequestHeaderValues`
  /// [selector] String value which will be used for the filter operation. If empty will exclude all traffic on this `matchVariable`
  /// [selectorMatchOperator] Operator which will be used to search in the variable content. Possible values are `Contains`, `EndsWith`, `Equals`, `EqualsAny` and `StartsWith`. If empty will exclude all traffic on this `matchVariable`
  const ApplicationGatewayWafConfigurationExclusion({
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': ?selectorMatchOperator,
    };
  }

  factory ApplicationGatewayWafConfigurationExclusion.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayWafConfigurationExclusion(
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectorMatchOperator: (() { final guardedValue = map['selectorMatchOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
