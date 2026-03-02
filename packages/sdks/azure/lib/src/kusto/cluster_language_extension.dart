// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLanguageExtension {
  /// The language extension image. Possible values are `Python3_11_7`, `Python3_11_7_DL`, `Python3_10_8`, `Python3_10_8_DL`, `Python3_6_5`, `PythonCustomImage`, and `R`.
  final pulumi.Input<String> image;
  /// The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [ClusterLanguageExtension].
  /// [image] The language extension image. Possible values are `Python3_11_7`, `Python3_11_7_DL`, `Python3_10_8`, `Python3_10_8_DL`, `Python3_6_5`, `PythonCustomImage`, and `R`.
  /// [name] The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  ClusterLanguageExtension({
    required this.image,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
    };
  }

  factory ClusterLanguageExtension.fromMap(Map<String, dynamic> map) {
    return ClusterLanguageExtension(
      image: (map['image'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

