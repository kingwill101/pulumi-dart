// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pages_projects_get_pages_projects_args_doc}
/// Arguments for getPagesProjects.
/// {@endtemplate}
/// {@macro pulumi_index_get_pages_projects_get_pages_projects_args_doc}
class GetPagesProjectsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetPagesProjectsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetPagesProjectsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetPagesProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
