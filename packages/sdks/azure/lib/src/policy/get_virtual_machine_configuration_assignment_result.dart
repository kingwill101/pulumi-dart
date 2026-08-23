// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualMachineConfigurationAssignment.
class GetVirtualMachineConfigurationAssignmentResult {
  /// Combined hash of the configuration package and parameters.
  final String assignmentHash;
  /// A value indicating compliance status of the machine for the assigned guest configuration. Possible return values are `Compliant`, `NonCompliant` and `Pending`.
  final String complianceStatus;
  /// The content hash for the Guest Configuration package.
  final String contentHash;
  /// The content URI where the Guest Configuration package is stored.
  final String contentUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Date and time, in RFC3339 format, when the machines compliance status was last checked.
  final String lastComplianceStatusChecked;
  /// The ID of the latest report for the guest configuration assignment.
  final String latestReportId;
  final String name;
  final String resourceGroupName;
  final String virtualMachineName;

  /// Creates a new [GetVirtualMachineConfigurationAssignmentResult].
  /// [assignmentHash] Combined hash of the configuration package and parameters.
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration. Possible return values are `Compliant`, `NonCompliant` and `Pending`.
  /// [contentHash] The content hash for the Guest Configuration package.
  /// [contentUri] The content URI where the Guest Configuration package is stored.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastComplianceStatusChecked] Date and time, in RFC3339 format, when the machines compliance status was last checked.
  /// [latestReportId] The ID of the latest report for the guest configuration assignment.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [virtualMachineName] Required.
  const GetVirtualMachineConfigurationAssignmentResult({
    required this.assignmentHash,
    required this.complianceStatus,
    required this.contentHash,
    required this.contentUri,
    required this.id,
    required this.lastComplianceStatusChecked,
    required this.latestReportId,
    required this.name,
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentHash': assignmentHash,
      'complianceStatus': complianceStatus,
      'contentHash': contentHash,
      'contentUri': contentUri,
      'id': id,
      'lastComplianceStatusChecked': lastComplianceStatusChecked,
      'latestReportId': latestReportId,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetVirtualMachineConfigurationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineConfigurationAssignmentResult(
      assignmentHash: map['assignmentHash'] as String,
      complianceStatus: map['complianceStatus'] as String,
      contentHash: map['contentHash'] as String,
      contentUri: map['contentUri'] as String,
      id: map['id'] as String,
      lastComplianceStatusChecked: map['lastComplianceStatusChecked'] as String,
      latestReportId: map['latestReportId'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachineName: map['virtualMachineName'] as String,
    );
  }
}
