// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_list_whois_by_domain_args_doc}
/// Arguments for listWhoisByDomain.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_list_whois_by_domain_args_doc}
class ListWhoisByDomainArgs {
  /// The domain name
  final pulumi.Input<String>? domain;
  /// Enrichment type
  final pulumi.Input<String> enrichmentType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWhoisByDomainArgs].
  /// [domain] The domain name
  /// [enrichmentType] Enrichment type
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListWhoisByDomainArgs({
    this.domain,
    required this.enrichmentType,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'enrichmentType': enrichmentType,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWhoisByDomainArgs.fromMap(Map<String, dynamic> map) {
    return ListWhoisByDomainArgs(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrichmentType: pulumi.Input.fromValue(map['enrichmentType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

