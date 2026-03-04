// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationClusterDomainConfig {
  /// Domain used by Workstations for HTTP ingress.
  final pulumi.Input<String> domain;

  /// Creates a new [WorkstationClusterDomainConfig].
  /// [domain] Domain used by Workstations for HTTP ingress.
  WorkstationClusterDomainConfig({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory WorkstationClusterDomainConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterDomainConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
