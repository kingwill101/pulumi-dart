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
  RandomPetState({
    pulumi.Output<Map<String, String>>? keepers,
    pulumi.Output<int>? length,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? separator,
  }) :
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      length = pulumi.Input.asOptionalInput<int>(length),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      separator = pulumi.Input.asOptionalInput<String>(separator);

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
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      length: map['length'] == null ? null : pulumi.Output.create<int>(map['length'] as int),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      separator: map['separator'] == null ? null : pulumi.Output.create<String>(map['separator'] as String),
    );
  }
}

