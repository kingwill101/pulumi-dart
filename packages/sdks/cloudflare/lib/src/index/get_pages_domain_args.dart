// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pages_domain_get_pages_domain_args_doc}
/// Arguments for getPagesDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_pages_domain_get_pages_domain_args_doc}
class GetPagesDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The domain name.
  final pulumi.Input<String> domainName;
  /// Name of the project.
  final pulumi.Input<String> projectName;

  /// Creates a new [GetPagesDomainArgs].
  /// [accountId] Identifier.
  /// [domainName] The domain name.
  /// [projectName] Name of the project.
  const GetPagesDomainArgs({
    required this.accountId,
    required this.domainName,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domainName': domainName,
      'projectName': projectName,
    };
  }

  factory GetPagesDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
