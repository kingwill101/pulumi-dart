// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustListsResultItem {
  final pulumi.Input<String> createdAt;
  /// Provide the list item description (optional).
  final pulumi.Input<String> description;
  /// Specify the item value.
  final pulumi.Input<String> value;

  /// Creates a new [GetZeroTrustListsResultItem].
  /// [createdAt] Required.
  /// [description] Provide the list item description (optional).
  /// [value] Specify the item value.
  const GetZeroTrustListsResultItem({
    required this.createdAt,
    required this.description,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'value': value,
    };
  }

  factory GetZeroTrustListsResultItem.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListsResultItem(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
