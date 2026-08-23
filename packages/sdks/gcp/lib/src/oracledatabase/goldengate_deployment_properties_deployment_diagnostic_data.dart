// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesDeploymentDiagnosticData {
  /// (Output)
  /// The bucket name.
  final pulumi.Input<String>? bucket;
  /// (Output)
  /// The time diagnostic end.
  final pulumi.Input<String>? diagnosticEndTime;
  /// (Output)
  /// The time diagnostic start.
  final pulumi.Input<String>? diagnosticStartTime;
  /// (Output)
  /// The diagnostic state.
  /// Possible values:
  /// IN_PROGRESS
  /// SUCCEEDED
  /// FAILED
  final pulumi.Input<String>? diagnosticState;
  /// (Output)
  /// The namespace name.
  final pulumi.Input<String>? namespace;
  /// (Output)
  /// The object name.
  ///
  /// &lt;a name="nestedPropertiesIngressIps"&gt;&lt;/a&gt;The `ingressIps` block contains:
  final pulumi.Input<String>? object_;

  /// Creates a new [GoldengateDeploymentPropertiesDeploymentDiagnosticData].
  /// [bucket] (Output)
  /// [diagnosticEndTime] (Output)
  /// [diagnosticStartTime] (Output)
  /// [diagnosticState] (Output)
  /// [namespace] (Output)
  /// [object_] (Output)
  const GoldengateDeploymentPropertiesDeploymentDiagnosticData({
    this.bucket,
    this.diagnosticEndTime,
    this.diagnosticStartTime,
    this.diagnosticState,
    this.namespace,
    this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'diagnosticEndTime': ?diagnosticEndTime,
      'diagnosticStartTime': ?diagnosticStartTime,
      'diagnosticState': ?diagnosticState,
      'namespace': ?namespace,
      'object': ?object_,
    };
  }

  factory GoldengateDeploymentPropertiesDeploymentDiagnosticData.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesDeploymentDiagnosticData(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnosticEndTime: (() { final guardedValue = map['diagnosticEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnosticStartTime: (() { final guardedValue = map['diagnosticStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnosticState: (() { final guardedValue = map['diagnosticState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
