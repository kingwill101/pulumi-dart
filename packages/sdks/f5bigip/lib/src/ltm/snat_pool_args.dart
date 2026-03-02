// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_snat_pool_snat_pool_args_doc}
/// The set of arguments for SnatPool.
/// {@endtemplate}
/// {@macro pulumi_ltm_snat_pool_snat_pool_args_doc}
class SnatPoolArgs {
  /// Specifies a translation address to add to or delete from a SNAT pool (at least one address is required)
  final pulumi.Input<List<String>> members;
  /// Name of the snatpool
  final pulumi.Input<String> name;

  /// Creates a new [SnatPoolArgs].
  /// [members] Specifies a translation address to add to or delete from a SNAT pool (at least one address is required)
  /// [name] Name of the snatpool
  SnatPoolArgs({
    required this.members,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': members,
      'name': name,
    };
  }

  factory SnatPoolArgs.fromMap(Map<String, dynamic> map) {
    return SnatPoolArgs(
      members: ((map['members'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

