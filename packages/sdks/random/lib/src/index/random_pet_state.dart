// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomPet resources.
class RandomPetState {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The length (in words) of the pet name. Defaults to 2
  final pulumi.Input<int>? length;
  /// A string to prefix the name with.
  final pulumi.Input<String>? prefix;
  /// The character to separate words in the pet name. Defaults to "-"
  final pulumi.Input<String>? separator;

  /// Creates a new [RandomPetState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [length] The length (in words) of the pet name. Defaults to 2
  /// [prefix] A string to prefix the name with.
  /// [separator] The character to separate words in the pet name. Defaults to "-"
  const RandomPetState({
    this.keepers,
    this.length,
    this.prefix,
    this.separator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'length': ?length,
      'prefix': ?prefix,
      'separator': ?separator,
    };
  }

  factory RandomPetState.fromMap(Map<String, dynamic> map) {
    return RandomPetState(
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      separator: (() { final guardedValue = map['separator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

