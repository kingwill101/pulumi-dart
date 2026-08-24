// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_pages_domain_pages_domain_args_doc}
/// The set of arguments for PagesDomain.
/// {@endtemplate}
/// {@macro pulumi_index_pages_domain_pages_domain_args_doc}
class PagesDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The domain name.
  final pulumi.Input<String> name;
  /// Name of the project.
  final pulumi.Input<String> projectName;

  /// Creates a new [PagesDomainArgs].
  /// [accountId] Identifier.
  /// [name] The domain name.
  /// [projectName] Name of the project.
  const PagesDomainArgs({
    required this.accountId,
    required this.name,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'projectName': projectName,
    };
  }

  factory PagesDomainArgs.fromMap(Map<String, dynamic> map) {
    return PagesDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
