// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationRulesSelectorExclude {
  /// Excluded operation IDs.
  final pulumi.Input<List<String>> operationIds;

  /// Creates a new [GetTokenValidationRulesSelectorExclude].
  /// [operationIds] Excluded operation IDs.
  const GetTokenValidationRulesSelectorExclude({
    required this.operationIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationIds': operationIds,
    };
  }

  factory GetTokenValidationRulesSelectorExclude.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesSelectorExclude(
      operationIds: pulumi.Input.fromValue((map['operationIds'] as List).cast<String>()),
    );
  }
}
