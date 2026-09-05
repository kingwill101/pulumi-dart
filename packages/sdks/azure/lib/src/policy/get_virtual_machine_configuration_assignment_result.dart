// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualMachineConfigurationAssignment.
class GetVirtualMachineConfigurationAssignmentResult {
  /// Combined hash of the configuration package and parameters.
  final String? assignmentHash;
  /// A value indicating compliance status of the machine for the assigned guest configuration. Possible return values are `Compliant`, `NonCompliant` and `Pending`.
  final String? complianceStatus;
  /// The content hash for the Guest Configuration package.
  final String? contentHash;
  /// The content URI where the Guest Configuration package is stored.
  final String? contentUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time, in RFC3339 format, when the machines compliance status was last checked.
  final String? lastComplianceStatusChecked;
  /// The ID of the latest report for the guest configuration assignment.
  final String? latestReportId;
  final String? name;
  final String? resourceGroupName;
  final String? virtualMachineName;

  /// Creates a new [GetVirtualMachineConfigurationAssignmentResult].
  /// [assignmentHash] Combined hash of the configuration package and parameters.
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration. Possible return values are `Compliant`, `NonCompliant` and `Pending`.
  /// [contentHash] The content hash for the Guest Configuration package.
  /// [contentUri] The content URI where the Guest Configuration package is stored.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastComplianceStatusChecked] Date and time, in RFC3339 format, when the machines compliance status was last checked.
  /// [latestReportId] The ID of the latest report for the guest configuration assignment.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [virtualMachineName] Optional.
  const GetVirtualMachineConfigurationAssignmentResult({
    this.assignmentHash,
    this.complianceStatus,
    this.contentHash,
    this.contentUri,
    this.id,
    this.lastComplianceStatusChecked,
    this.latestReportId,
    this.name,
    this.resourceGroupName,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentHash': ?assignmentHash,
      'complianceStatus': ?complianceStatus,
      'contentHash': ?contentHash,
      'contentUri': ?contentUri,
      'id': ?id,
      'lastComplianceStatusChecked': ?lastComplianceStatusChecked,
      'latestReportId': ?latestReportId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory GetVirtualMachineConfigurationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineConfigurationAssignmentResult(
      assignmentHash: (() { final guardedValue = map['assignmentHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      complianceStatus: (() { final guardedValue = map['complianceStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentUri: (() { final guardedValue = map['contentUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastComplianceStatusChecked: (() { final guardedValue = map['lastComplianceStatusChecked']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestReportId: (() { final guardedValue = map['latestReportId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineName: (() { final guardedValue = map['virtualMachineName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
