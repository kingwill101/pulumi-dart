// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// The name of the domain.
  final pulumi.Input<String> name;

  /// Creates a new [GetDomainArgs].
  /// [name] The name of the domain.
  GetDomainArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(name: pulumi.Input.fromValue(map['name'] as String));
  }
}
