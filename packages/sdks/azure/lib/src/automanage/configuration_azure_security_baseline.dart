// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationAzureSecurityBaseline {
  /// The assignment type of the azure security baseline. Possible values are `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `Audit` and `DeployAndAutoCorrect`. Defaults to `ApplyAndAutoCorrect`.
  final pulumi.Input<String>? assignmentType;

  /// Creates a new [ConfigurationAzureSecurityBaseline].
  /// [assignmentType] The assignment type of the azure security baseline. Possible values are `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `Audit` and `DeployAndAutoCorrect`. Defaults to `ApplyAndAutoCorrect`.
  ConfigurationAzureSecurityBaseline({
    this.assignmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
    };
  }

  factory ConfigurationAzureSecurityBaseline.fromMap(Map<String, dynamic> map) {
    return ConfigurationAzureSecurityBaseline(
      assignmentType: map['assignmentType'] == null ? null : (map['assignmentType']! as String).input(),
    );
  }
}

