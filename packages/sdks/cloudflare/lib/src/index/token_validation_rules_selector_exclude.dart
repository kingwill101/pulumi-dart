// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenValidationRulesSelectorExclude {
  /// Excluded operation IDs.
  final pulumi.Input<List<String>?>? operationIds;

  /// Creates a new [TokenValidationRulesSelectorExclude].
  /// [operationIds] Excluded operation IDs.
  const TokenValidationRulesSelectorExclude({
    this.operationIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationIds': ?operationIds,
    };
  }

  factory TokenValidationRulesSelectorExclude.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesSelectorExclude(
      operationIds: (() { final guardedValue = map['operationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
