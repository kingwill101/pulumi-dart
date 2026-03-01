// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CipherGroup resources.
class CipherGroupState {
  /// Specifies the configuration of the allowed groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no allowed ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  final pulumi.Input<List<String>>? allows;
  /// Specifies descriptive text that identifies the cipher rule
  final pulumi.Input<String>? description;
  /// Name of the Cipher group. Name should be in pattern `partition` + `cipher_group_name`
  final pulumi.Input<String>? name;
  /// Controls the order of the Cipher String list in the Cipher Audit section. Options are Default, Speed, Strength, FIPS, and Hardware. The rules are processed in the order listed. The default is `default`.
  final pulumi.Input<String>? ordering;
  /// Specifies the configuration of the restrict groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no restricted ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  final pulumi.Input<List<String>>? requires;

  /// Creates a new [CipherGroupState].
  /// [allows] Specifies the configuration of the allowed groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no allowed ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  /// [description] Specifies descriptive text that identifies the cipher rule
  /// [name] Name of the Cipher group. Name should be in pattern `partition` + `cipher_group_name`
  /// [ordering] Controls the order of the Cipher String list in the Cipher Audit section. Options are Default, Speed, Strength, FIPS, and Hardware. The rules are processed in the order listed. The default is `default`.
  /// [requires] Specifies the configuration of the restrict groups of ciphers. You can select a cipher rule from the Available Cipher Rules list. To have no restricted ciphers, omit this attribute in the config or set it to an empty set like, `[]`.
  CipherGroupState({
    pulumi.Output<List<String>>? allows,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ordering,
    pulumi.Output<List<String>>? requires,
  }) :
      allows = pulumi.Input.asOptionalInput<List<String>>(allows),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      ordering = pulumi.Input.asOptionalInput<String>(ordering),
      requires = pulumi.Input.asOptionalInput<List<String>>(requires);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': ?allows,
      'description': ?description,
      'name': ?name,
      'ordering': ?ordering,
      'requires': ?requires,
    };
  }

  factory CipherGroupState.fromMap(Map<String, dynamic> map) {
    return CipherGroupState(
      allows: map['allows'] == null ? null : pulumi.Output.create<List<String>>((map['allows'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ordering: map['ordering'] == null ? null : pulumi.Output.create<String>(map['ordering'] as String),
      requires: map['requires'] == null ? null : pulumi.Output.create<List<String>>((map['requires'] as List).cast<String>()),
    );
  }
}

