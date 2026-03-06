// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_dns_dns_args_doc}
/// The set of arguments for Dns.
/// {@endtemplate}
/// {@macro pulumi_sys_dns_dns_args_doc}
class DnsArgs {
  /// Provide description for your DNS server
  final pulumi.Input<String> description;
  /// Specifies the name servers that the system uses to validate DNS lookups, and resolve host names.
  final pulumi.Input<List<String>> nameServers;
  /// Configures the number of dots needed in a name before an initial absolute query will be made.
  final pulumi.Input<int>? numberOfDots;
  /// Specifies the domains that the system searches for local domain lookups, to resolve local host names.
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [DnsArgs].
  /// [description] Provide description for your DNS server
  /// [nameServers] Specifies the name servers that the system uses to validate DNS lookups, and resolve host names.
  /// [numberOfDots] Configures the number of dots needed in a name before an initial absolute query will be made.
  /// [searches] Specifies the domains that the system searches for local domain lookups, to resolve local host names.
  const DnsArgs({
    required this.description,
    required this.nameServers,
    this.numberOfDots,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'nameServers': nameServers,
      'numberOfDots': ?numberOfDots,
      'searches': ?searches,
    };
  }

  factory DnsArgs.fromMap(Map<String, dynamic> map) {
    return DnsArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
      numberOfDots: (() { final guardedValue = map['numberOfDots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      searches: (() { final guardedValue = map['searches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

