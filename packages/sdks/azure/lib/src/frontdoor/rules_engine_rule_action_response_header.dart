// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesEngineRuleActionResponseHeader {
  /// can be set to `Overwrite`, `Append` or `Delete`.
  final pulumi.Input<String>? headerActionType;
  /// header name (string).
  final pulumi.Input<String>? headerName;
  /// value name (string).
  final pulumi.Input<String>? value;

  /// Creates a new [RulesEngineRuleActionResponseHeader].
  /// [headerActionType] can be set to `Overwrite`, `Append` or `Delete`.
  /// [headerName] header name (string).
  /// [value] value name (string).
  RulesEngineRuleActionResponseHeader({
    this.headerActionType,
    this.headerName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerActionType': ?headerActionType,
      'headerName': ?headerName,
      'value': ?value,
    };
  }

  factory RulesEngineRuleActionResponseHeader.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleActionResponseHeader(
      headerActionType: (() { final guardedValue = map['headerActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

