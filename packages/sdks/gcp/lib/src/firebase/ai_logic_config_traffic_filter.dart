// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiLogicConfigTrafficFilter {
  /// Only allows users to use AI Logic via prompt templates for this project.
  /// If true, only calls using server templates are permitted.
  final pulumi.Input<bool?>? templateOnly;

  /// Creates a new [AiLogicConfigTrafficFilter].
  /// [templateOnly] Only allows users to use AI Logic via prompt templates for this project.
  const AiLogicConfigTrafficFilter({
    this.templateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateOnly': ?templateOnly,
    };
  }

  factory AiLogicConfigTrafficFilter.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigTrafficFilter(
      templateOnly: (() { final guardedValue = map['templateOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
