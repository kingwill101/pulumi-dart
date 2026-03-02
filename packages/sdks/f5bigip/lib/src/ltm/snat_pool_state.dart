// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnatPool resources.
class SnatPoolState {
  /// Specifies a translation address to add to or delete from a SNAT pool (at least one address is required)
  final pulumi.Input<List<String>>? members;
  /// Name of the snatpool
  final pulumi.Input<String>? name;

  /// Creates a new [SnatPoolState].
  /// [members] Specifies a translation address to add to or delete from a SNAT pool (at least one address is required)
  /// [name] Name of the snatpool
  SnatPoolState({
    this.members,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
      'name': ?name,
    };
  }

  factory SnatPoolState.fromMap(Map<String, dynamic> map) {
    return SnatPoolState(
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

