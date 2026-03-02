// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Powershell72ModuleModuleLinkHash {
  /// Specifies the algorithm used for the hash content.
  final pulumi.Input<String> algorithm;
  /// The hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [Powershell72ModuleModuleLinkHash].
  /// [algorithm] Specifies the algorithm used for the hash content.
  /// [value] The hash value of the content.
  Powershell72ModuleModuleLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory Powershell72ModuleModuleLinkHash.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleModuleLinkHash(
      algorithm: (map['algorithm'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

