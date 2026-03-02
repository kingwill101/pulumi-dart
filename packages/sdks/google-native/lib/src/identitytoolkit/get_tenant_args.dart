// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_tenant_args_doc}
/// Arguments for getTenant.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_tenant_args_doc}
class GetTenantArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetTenantArgs].
  /// [project] Optional.
  /// [tenantId] Required.
  GetTenantArgs({
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

