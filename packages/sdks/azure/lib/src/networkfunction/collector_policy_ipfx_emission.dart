// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectorPolicyIpfxEmission {
  /// A list of emission destination types. The only possible value is `AzureMonitor`. Changing this forces a new Network Function Collector Policy to be created.
  ///
  /// &gt; **Note:** Please use the `azure.monitoring.DiagnosticSetting` resource to forward logs to a Log Analytics Workspace.
  final pulumi.Input<String> destinationTypes;

  /// Creates a new [CollectorPolicyIpfxEmission].
  /// [destinationTypes] A list of emission destination types. The only possible value is `AzureMonitor`. Changing this forces a new Network Function Collector Policy to be created.
  const CollectorPolicyIpfxEmission({
    required this.destinationTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationTypes': destinationTypes,
    };
  }

  factory CollectorPolicyIpfxEmission.fromMap(Map<String, dynamic> map) {
    return CollectorPolicyIpfxEmission(
      destinationTypes: pulumi.Input.fromValue(map['destinationTypes'] as String),
    );
  }
}

