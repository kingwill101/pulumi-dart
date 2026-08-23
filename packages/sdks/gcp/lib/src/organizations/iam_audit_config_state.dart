// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_audit_log_config.dart';

/// Input properties used for looking up and filtering IamAuditConfig resources.
class IamAuditConfigState {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>>? auditLogConfigs;
  /// (Computed) The etag of the organization's IAM policy.
  final pulumi.Input<String>? etag;
  /// The organization id of the target organization.
  final pulumi.Input<String>? orgId;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.organizations.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `logTypes` specified in each `auditLogConfig` are enabled, and the `exemptedMembers` in each `auditLogConfig` are exempted.
  final pulumi.Input<String>? service;

  /// Creates a new [IamAuditConfigState].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [etag] (Computed) The etag of the organization's IAM policy.
  /// [orgId] The organization id of the target organization.
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.organizations.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `logTypes` specified in each `auditLogConfig` are enabled, and the `exemptedMembers` in each `auditLogConfig` are exempted.
  const IamAuditConfigState({
    this.auditLogConfigs,
    this.etag,
    this.orgId,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?pulumi.Input.mapOptionalInputValue<List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'orgId': ?orgId,
      'service': ?service,
    };
  }

  factory IamAuditConfigState.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigState(
      auditLogConfigs: (() { final guardedValue = map['auditLogConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(guardedValue, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
