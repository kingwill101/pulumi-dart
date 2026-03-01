// ignore_for_file: unused_element, unnecessary_cast


class GetNamespaceSku {
  /// Specifies the Name of the Notification Hub Namespace.
  final String name;

  /// Creates a new [GetNamespaceSku].
  /// [name] Specifies the Name of the Notification Hub Namespace.
  GetNamespaceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNamespaceSku.fromMap(Map<String, dynamic> map) {
    return GetNamespaceSku(
      name: map['name'] as String,
    );
  }
}

