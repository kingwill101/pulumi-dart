// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GremlinGraphUniqueKey {
  /// A list of paths to use for this unique key. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> paths;

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
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
    );
  }
}

