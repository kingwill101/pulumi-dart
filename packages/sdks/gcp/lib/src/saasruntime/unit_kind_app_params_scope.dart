// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindAppParamsScope {
  /// Scope type.
  /// Possible values:
  /// TYPE_REGIONAL
  /// TYPE_GLOBAL
  final pulumi.Input<String> type;

  /// Creates a new [UnitKindAppParamsScope].
  /// [type] Scope type.
  const UnitKindAppParamsScope({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory UnitKindAppParamsScope.fromMap(Map<String, dynamic> map) {
    return UnitKindAppParamsScope(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
