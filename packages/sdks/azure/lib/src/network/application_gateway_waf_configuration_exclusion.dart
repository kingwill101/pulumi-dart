// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayWafConfigurationExclusion {
  /// Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames` and `RequestHeaderValues`
  final pulumi.Input<String> matchVariable;
  /// String value which will be used for the filter operation. If empty will exclude all traffic on this `match_variable`
  final pulumi.Input<String>? selector;
  /// Operator which will be used to search in the variable content. Possible values are `Contains`, `EndsWith`, `Equals`, `EqualsAny` and `StartsWith`. If empty will exclude all traffic on this `match_variable`
  final pulumi.Input<String>? selectorMatchOperator;

  /// Creates a new [ApplicationGatewayWafConfigurationExclusion].
  /// [matchVariable] Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are `RequestArgKeys`, `RequestArgNames`, `RequestArgValues`, `RequestCookieKeys`, `RequestCookieNames`, `RequestCookieValues`, `RequestHeaderKeys`, `RequestHeaderNames` and `RequestHeaderValues`
  /// [selector] String value which will be used for the filter operation. If empty will exclude all traffic on this `match_variable`
  /// [selectorMatchOperator] Operator which will be used to search in the variable content. Possible values are `Contains`, `EndsWith`, `Equals`, `EqualsAny` and `StartsWith`. If empty will exclude all traffic on this `match_variable`
  ApplicationGatewayWafConfigurationExclusion({
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
      matchVariable: (map['matchVariable'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      selectorMatchOperator: map['selectorMatchOperator'] == null ? null : (map['selectorMatchOperator'] as String).input(),
    );
  }
}

