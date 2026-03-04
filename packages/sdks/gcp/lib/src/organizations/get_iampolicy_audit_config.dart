// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iampolicy_audit_config_audit_log_config.dart';

class GetIAMPolicyAuditConfig {
  /// A nested block that defines the operations you'd like to log.
  final pulumi.Input<List<GetIAMPolicyAuditConfigAuditLogConfig>>
  auditLogConfigs;

  /// Defines a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final pulumi.Input<String> service;

  /// Creates a new [GetIAMPolicyAuditConfig].
  /// [auditLogConfigs] A nested block that defines the operations you'd like to log.
  /// [service] Defines a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  GetIAMPolicyAuditConfig({
    required this.auditLogConfigs,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs':
          pulumi.Input.mapInputValue<
            List<GetIAMPolicyAuditConfigAuditLogConfig>,
            List<Map<String, dynamic>>
          >(
            auditLogConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetIAMPolicyAuditConfigAuditLogConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'service': service,
    };
  }

  factory GetIAMPolicyAuditConfig.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyAuditConfig(
      auditLogConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetIAMPolicyAuditConfigAuditLogConfig>(
          map['auditLogConfigs']!,
          (value) => GetIAMPolicyAuditConfigAuditLogConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
