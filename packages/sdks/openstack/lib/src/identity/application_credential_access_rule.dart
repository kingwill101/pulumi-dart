// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationCredentialAccessRule {
  /// The ID of the existing access rule. The access rule ID of
  /// another application credential can be provided.
  final pulumi.Input<String>? id;
  /// The request method that the application credential is
  /// permitted to use for a given API endpoint. Allowed values: `POST`, `GET`,
  /// `HEAD`, `PATCH`, `PUT` and `DELETE`.
  final pulumi.Input<String> method;
  /// The API path that the application credential is permitted
  /// to access. May use named wildcards such as **{tag}** or the unnamed wildcard
  /// **\*** to match against any string in the path up to a **/**, or the recursive
  /// wildcard **\*\*** to include **/** in the matched path.
  final pulumi.Input<String> path;
  /// The service type identifier for the service that the
  /// application credential is granted to access. Must be a service type that is
  /// listed in the service catalog and not a code name for a service. E.g.
  /// **identity**, **compute**, **volumev3**, **image**, **network**,
  /// **object-store**, **sharev2**, **dns**, **key-manager**, **monitoring**, etc.
  final pulumi.Input<String> service;

  /// Creates a new [ApplicationCredentialAccessRule].
  /// [id] The ID of the existing access rule. The access rule ID of
  /// [method] The request method that the application credential is
  /// [path] The API path that the application credential is permitted
  /// [service] The service type identifier for the service that the
  ApplicationCredentialAccessRule({
    this.id,
    required this.method,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'method': method,
      'path': path,
      'service': service,
    };
  }

  factory ApplicationCredentialAccessRule.fromMap(Map<String, dynamic> map) {
    return ApplicationCredentialAccessRule(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      method: (map['method'] as String).input(),
      path: (map['path'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

