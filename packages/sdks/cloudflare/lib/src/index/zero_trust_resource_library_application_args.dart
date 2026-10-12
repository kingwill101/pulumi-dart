// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_resource_library_application_zero_trust_resource_library_application_args_doc}
/// The set of arguments for ZeroTrustResourceLibraryApplication.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_resource_library_application_zero_trust_resource_library_application_args_doc}
class ZeroTrustResourceLibraryApplicationArgs {
  final pulumi.Input<String> accountId;
  /// Returns the category ID.
  final pulumi.Input<int?>? categoryId;
  /// Hostnames matched by the application.
  final pulumi.Input<List<String>?>? hostnames;
  /// Returns the human readable ID.
  final pulumi.Input<String?>? humanId;
  /// IP subnets for this application. Custom application create and update requests accept IPv4 prefix lengths /8 through /32 and IPv6 prefix lengths /32 through /128.
  final pulumi.Input<List<String>?>? ipSubnets;
  /// Returns the application name.
  final pulumi.Input<String?>? name;
  /// Port and protocol pairs matched by the application.
  final pulumi.Input<List<String>?>? portProtocols;
  /// Support domains matched by the application.
  final pulumi.Input<List<String>?>? supportDomains;

  /// Creates a new [ZeroTrustResourceLibraryApplicationArgs].
  /// [accountId] Required.
  /// [categoryId] Returns the category ID.
  /// [hostnames] Hostnames matched by the application.
  /// [humanId] Returns the human readable ID.
  /// [ipSubnets] IP subnets for this application. Custom application create and update requests accept IPv4 prefix lengths /8 through /32 and IPv6 prefix lengths /32 through /128.
  /// [name] Returns the application name.
  /// [portProtocols] Port and protocol pairs matched by the application.
  /// [supportDomains] Support domains matched by the application.
  const ZeroTrustResourceLibraryApplicationArgs({
    required this.accountId,
    this.categoryId,
    this.hostnames,
    this.humanId,
    this.ipSubnets,
    this.name,
    this.portProtocols,
    this.supportDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'categoryId': ?categoryId,
      'hostnames': ?hostnames,
      'humanId': ?humanId,
      'ipSubnets': ?ipSubnets,
      'name': ?name,
      'portProtocols': ?portProtocols,
      'supportDomains': ?supportDomains,
    };
  }

  factory ZeroTrustResourceLibraryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustResourceLibraryApplicationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      humanId: (() { final guardedValue = map['humanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipSubnets: (() { final guardedValue = map['ipSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portProtocols: (() { final guardedValue = map['portProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportDomains: (() { final guardedValue = map['supportDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
