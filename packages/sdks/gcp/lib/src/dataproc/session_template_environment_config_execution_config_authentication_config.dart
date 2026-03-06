// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig {
  /// Authentication type for the user workload running in containers.
  /// Possible values are: `SERVICE_ACCOUNT`, `END_USER_CREDENTIALS`.
  final pulumi.Input<String>? userWorkloadAuthenticationType;

  /// Creates a new [SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig].
  /// [userWorkloadAuthenticationType] Authentication type for the user workload running in containers.
  const SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userWorkloadAuthenticationType': ?userWorkloadAuthenticationType,
    };
  }

  factory SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig(
      userWorkloadAuthenticationType: (() { final guardedValue = map['userWorkloadAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

