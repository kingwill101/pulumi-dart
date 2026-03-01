// ignore_for_file: unused_element, unnecessary_cast


class GremlinGraphUniqueKey {
  /// A list of paths to use for this unique key. Changing this forces a new resource to be created.
  final List<String> paths;

  /// Creates a new [GremlinGraphUniqueKey].
  /// [paths] A list of paths to use for this unique key. Changing this forces a new resource to be created.
  GremlinGraphUniqueKey({
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
    };
  }

  factory GremlinGraphUniqueKey.fromMap(Map<String, dynamic> map) {
    return GremlinGraphUniqueKey(
      paths: (map['paths'] as List).cast<String>(),
    );
  }
}

