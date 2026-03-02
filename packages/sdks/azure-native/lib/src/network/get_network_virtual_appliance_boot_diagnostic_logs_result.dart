// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkVirtualApplianceBootDiagnosticLogs.
class GetNetworkVirtualApplianceBootDiagnosticLogsResult {
  /// The network virtual appliance instance id for which boot diagnostic logs is being requested
  final int? instanceId;

  /// Creates a new [GetNetworkVirtualApplianceBootDiagnosticLogsResult].
  /// [instanceId] The network virtual appliance instance id for which boot diagnostic logs is being requested
  GetNetworkVirtualApplianceBootDiagnosticLogsResult({
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
    };
  }

  factory GetNetworkVirtualApplianceBootDiagnosticLogsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceBootDiagnosticLogsResult(
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as int,
    );
  }
}

