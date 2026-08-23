// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_audit_log_config.dart';

/// {@template pulumi_organizations_iam_audit_config_iam_audit_config_args_doc}
/// The set of arguments for IamAuditConfig.
/// {@endtemplate}
/// {@macro pulumi_organizations_iam_audit_config_iam_audit_config_args_doc}
class IamAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;
  /// The organization id of the target organization.
  final pulumi.Input<String> orgId;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.organizations.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `logTypes` specified in each `auditLogConfig` are enabled, and the `exemptedMembers` in each `auditLogConfig` are exempted.
  final pulumi.Input<String> service;

  /// Creates a new [IamAuditConfigArgs].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [orgId] The organization id of the target organization.
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.organizations.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `logTypes` specified in each `auditLogConfig` are enabled, and the `exemptedMembers` in each `auditLogConfig` are exempted.
  const IamAuditConfigArgs({
    required this.auditLogConfigs,
    required this.orgId,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': pulumi.Input.mapInputValue<List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orgId': orgId,
      'service': service,
    };
  }

  factory IamAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs(
      auditLogConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(map['auditLogConfigs']!, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
