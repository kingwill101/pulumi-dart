// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationRulesListResultSelectorExclude {
  /// Excluded operation IDs.
  final pulumi.Input<List<String>> operationIds;

  /// Creates a new [GetTokenValidationRulesListResultSelectorExclude].
  /// [operationIds] Excluded operation IDs.
  const GetTokenValidationRulesListResultSelectorExclude({
    required this.operationIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationIds': operationIds,
    };
  }

  factory GetTokenValidationRulesListResultSelectorExclude.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListResultSelectorExclude(
      operationIds: pulumi.Input.fromValue((map['operationIds'] as List).cast<String>()),
    );
  }
}
