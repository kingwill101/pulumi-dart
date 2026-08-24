// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pages_domains_get_pages_domains_args_doc}
/// Arguments for getPagesDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_pages_domains_get_pages_domains_args_doc}
class GetPagesDomainsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the project.
  final pulumi.Input<String> projectName;

  /// Creates a new [GetPagesDomainsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [projectName] Name of the project.
  const GetPagesDomainsArgs({
    this.accountId,
    this.maxItems,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'projectName': projectName,
    };
  }

  factory GetPagesDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
