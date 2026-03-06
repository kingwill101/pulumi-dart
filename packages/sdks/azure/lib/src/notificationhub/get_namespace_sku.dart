// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNamespaceSku {
  /// Specifies the Name of the Notification Hub Namespace.
  final pulumi.Input<String> name;

  /// Creates a new [GetNamespaceSku].
  /// [name] Specifies the Name of the Notification Hub Namespace.
  const GetNamespaceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNamespaceSku.fromMap(Map<String, dynamic> map) {
    return GetNamespaceSku(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

