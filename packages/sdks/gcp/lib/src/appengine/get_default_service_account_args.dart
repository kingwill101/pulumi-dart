// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_get_default_service_account_get_default_service_account_args_doc}
/// Arguments for getDefaultServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_appengine_get_default_service_account_get_default_service_account_args_doc}
class GetDefaultServiceAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDefaultServiceAccountArgs].
  /// [project] The project ID. If it is not provided, the provider project is used.
  GetDefaultServiceAccountArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetDefaultServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

