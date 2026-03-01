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
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? nameServers,
    pulumi.Output<int>? numberOfDots,
    pulumi.Output<List<String>>? searches,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      nameServers = pulumi.Input.asOptionalInput<List<String>>(nameServers),
      numberOfDots = pulumi.Input.asOptionalInput<int>(numberOfDots),
      searches = pulumi.Input.asOptionalInput<List<String>>(searches);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<String>>((map['nameServers'] as List).cast<String>()),
      numberOfDots: map['numberOfDots'] == null ? null : pulumi.Output.create<int>(map['numberOfDots'] as int),
      searches: map['searches'] == null ? null : pulumi.Output.create<List<String>>((map['searches'] as List).cast<String>()),
    );
  }
}

