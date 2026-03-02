// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModuleModuleLinkHash {
  /// Specifies the algorithm used for the hash content.
  final pulumi.Input<String> algorithm;
  /// The hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [ModuleModuleLinkHash].
  /// [algorithm] Specifies the algorithm used for the hash content.
  /// [value] The hash value of the content.
  ModuleModuleLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory ModuleModuleLinkHash.fromMap(Map<String, dynamic> map) {
    return ModuleModuleLinkHash(
      algorithm: (map['algorithm'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

