// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamaudit_config_audit_log_config.dart';

/// Input properties used for looking up and filtering IAMAuditConfig resources.
class IAMAuditConfigState {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IAMAuditConfigAuditLogConfig>>? auditLogConfigs;
  /// (Computed) The etag of the project's IAM policy.
  final pulumi.Input<String>? etag;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String>? project;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String>? service;

  /// Creates a new [IAMAuditConfigState].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [etag] (Computed) The etag of the project's IAM policy.
  /// [project] The project id of the target project. This is not
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IAMAuditConfigState({
    this.auditLogConfigs,
    this.etag,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?pulumi.Input.mapOptionalInputValue<List<IAMAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IAMAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'project': ?project,
      'service': ?service,
    };
  }

  factory IAMAuditConfigState.fromMap(Map<String, dynamic> map) {
    return IAMAuditConfigState(
      auditLogConfigs: (() { final guardedValue = map['auditLogConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IAMAuditConfigAuditLogConfig>(guardedValue, (value) => IAMAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

