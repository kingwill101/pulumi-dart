// ignore_for_file: unused_element, unnecessary_cast


class RulesEngineRuleActionRequestHeader {
  /// can be set to `Overwrite`, `Append` or `Delete`.
  final String? headerActionType;
  /// header name (string).
  final String? headerName;
  /// value name (string).
  final String? value;

  /// Creates a new [RulesEngineRuleActionRequestHeader].
  /// [headerActionType] can be set to `Overwrite`, `Append` or `Delete`.
  /// [headerName] header name (string).
  /// [value] value name (string).
  RulesEngineRuleActionRequestHeader({
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

  factory RulesEngineRuleActionRequestHeader.fromMap(Map<String, dynamic> map) {
    return RulesEngineRuleActionRequestHeader(
      headerActionType: map['headerActionType'] == null ? null : map['headerActionType'] as String,
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

