// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudquota_get_squota_infos_get_squota_infos_args_doc}
/// Arguments for getSQuotaInfos.
/// {@endtemplate}
/// {@macro pulumi_cloudquota_get_squota_infos_get_squota_infos_args_doc}
class GetSQuotaInfosArgs {
  /// Parent value of QuotaInfo resources. Listing across different resource containers (such as 'projects/-') is not allowed. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  final pulumi.Input<String> parent;
  /// The name of the service in which the quotas are defined.
  final pulumi.Input<String> service;

  /// Creates a new [GetSQuotaInfosArgs].
  /// [parent] Parent value of QuotaInfo resources. Listing across different resource containers (such as 'projects/-') is not allowed. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  /// [service] The name of the service in which the quotas are defined.
  const GetSQuotaInfosArgs({
    required this.parent,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'service': service,
    };
  }

  factory GetSQuotaInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

