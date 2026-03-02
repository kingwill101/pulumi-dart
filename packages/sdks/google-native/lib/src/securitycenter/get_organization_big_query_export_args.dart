// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
/// Arguments for getOrganizationBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
class GetOrganizationBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationBigQueryExportArgs].
  /// [bigQueryExportId] Required.
  /// [organizationId] Required.
  GetOrganizationBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBigQueryExportArgs(
      bigQueryExportId: (map['bigQueryExportId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

