// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_index_domain_domain_args_doc}
class DomainArgs {
  /// The IP address of the domain. If specified, this IP
  /// is used to created an initial A record for the domain.
  final pulumi.Input<String>? ipAddress;
  /// The name of the domain
  final pulumi.Input<String> name;

  /// Creates a new [DomainArgs].
  /// [ipAddress] The IP address of the domain. If specified, this IP
  /// [name] The name of the domain
  DomainArgs({
    this.ipAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'name': name,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

