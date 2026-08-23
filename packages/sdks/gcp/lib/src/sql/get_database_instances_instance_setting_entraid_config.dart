// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingEntraidConfig {
  /// The application ID for the Entra ID configuration.
  final pulumi.Input<String> applicationId;
  /// The tenant ID for the Entra ID configuration.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetDatabaseInstancesInstanceSettingEntraidConfig].
  /// [applicationId] The application ID for the Entra ID configuration.
  /// [tenantId] The tenant ID for the Entra ID configuration.
  const GetDatabaseInstancesInstanceSettingEntraidConfig({
    required this.applicationId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'tenantId': tenantId,
    };
  }

  factory GetDatabaseInstancesInstanceSettingEntraidConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingEntraidConfig(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
