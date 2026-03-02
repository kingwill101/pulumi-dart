// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_cipher_group_cipher_group_args_doc}
/// The set of arguments for CipherGroup.
/// {@endtemplate}
/// {@macro pulumi_ltm_cipher_group_cipher_group_args_doc}
class CipherGroupArgs {
  /// Specifies the configuration of the allowed groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no allowed ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  final pulumi.Input<List<String>>? allows;
  /// Specifies descriptive text that identifies the cipher rule
  final pulumi.Input<String>? description;
  /// Name of the Cipher group. Name should be in pattern `partition` + `cipher_group_name`
  final pulumi.Input<String> name;
  /// Controls the order of the Cipher String list in the Cipher Audit section. Options are Default, Speed, Strength, FIPS, and Hardware. The rules are processed in the order listed. The default is `default`.
  final pulumi.Input<String>? ordering;
  /// Specifies the configuration of the restrict groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no restricted ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  final pulumi.Input<List<String>>? requires;

  /// Creates a new [CipherGroupArgs].
  /// [allows] Specifies the configuration of the allowed groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no allowed ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  /// [description] Specifies descriptive text that identifies the cipher rule
  /// [name] Name of the Cipher group. Name should be in pattern `partition` + `cipher_group_name`
  /// [ordering] Controls the order of the Cipher String list in the Cipher Audit section. Options are Default, Speed, Strength, FIPS, and Hardware. The rules are processed in the order listed. The default is `default`.
  /// [requires] Specifies the configuration of the restrict groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no restricted ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  CipherGroupArgs({
    this.allows,
    this.description,
    required this.name,
    this.ordering,
    this.requires,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': ?allows,
      'description': ?description,
      'name': name,
      'ordering': ?ordering,
      'requires': ?requires,
    };
  }

  factory CipherGroupArgs.fromMap(Map<String, dynamic> map) {
    return CipherGroupArgs(
      allows: map['allows'] == null ? null : ((map['allows']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      ordering: map['ordering'] == null ? null : (map['ordering']! as String).input(),
      requires: map['requires'] == null ? null : ((map['requires']! as List).cast<String>()).input(),
    );
  }
}

