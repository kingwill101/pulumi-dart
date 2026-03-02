// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dns resources.
class DnsState {
  /// Provide description for your DNS server
  final pulumi.Input<String>? description;
  /// Specifies the name servers that the system uses to validate DNS lookups, and resolve host names.
  final pulumi.Input<List<String>>? nameServers;
  /// Configures the number of dots needed in a name before an initial absolute query will be made.
  final pulumi.Input<int>? numberOfDots;
  /// Specifies the domains that the system searches for local domain lookups, to resolve local host names.
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [DnsState].
  /// [description] Provide description for your DNS server
  /// [nameServers] Specifies the name servers that the system uses to validate DNS lookups, and resolve host names.
  /// [numberOfDots] Configures the number of dots needed in a name before an initial absolute query will be made.
  /// [searches] Specifies the domains that the system searches for local domain lookups, to resolve local host names.
  DnsState({
    this.description,
    this.nameServers,
    this.numberOfDots,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'nameServers': ?nameServers,
      'numberOfDots': ?numberOfDots,
      'searches': ?searches,
    };
  }

  factory DnsState.fromMap(Map<String, dynamic> map) {
    return DnsState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      nameServers: map['nameServers'] == null ? null : ((map['nameServers']! as List).cast<String>()).input(),
      numberOfDots: map['numberOfDots'] == null ? null : (map['numberOfDots']! as int).input(),
      searches: map['searches'] == null ? null : ((map['searches']! as List).cast<String>()).input(),
    );
  }
}

