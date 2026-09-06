// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of the storage account.
class Sku {
  /// The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  final pulumi.Input<dynamic> name;

  /// Creates a new [Sku].
  /// [name] The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  const Sku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
