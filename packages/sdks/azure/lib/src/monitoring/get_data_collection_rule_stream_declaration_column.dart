// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleStreamDeclarationColumn {
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [GetDataCollectionRuleStreamDeclarationColumn].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [type] cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  const GetDataCollectionRuleStreamDeclarationColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetDataCollectionRuleStreamDeclarationColumn.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleStreamDeclarationColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
