// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution properties supported by the OperationsManagement resource provider.
class SolutionPropertiesResponse {
  /// The azure resources that will be contained within the solutions. They will be locked and gets deleted automatically when the solution is deleted.
  final pulumi.Input<List<String>>? containedResources;
  /// The provisioning state for the solution.
  final pulumi.Input<String> provisioningState;
  /// The resources that will be referenced from this solution. Deleting any of those solution out of band will break the solution.
  final pulumi.Input<List<String>>? referencedResources;
  /// The azure resourceId for the workspace where the solution will be deployed/enabled.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [SolutionPropertiesResponse].
  /// [containedResources] The azure resources that will be contained within the solutions. They will be locked and gets deleted automatically when the solution is deleted.
  /// [provisioningState] The provisioning state for the solution.
  /// [referencedResources] The resources that will be referenced from this solution. Deleting any of those solution out of band will break the solution.
  /// [workspaceResourceId] The azure resourceId for the workspace where the solution will be deployed/enabled.
  SolutionPropertiesResponse({
    this.containedResources,
    required this.provisioningState,
    this.referencedResources,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containedResources': ?containedResources,
      'provisioningState': provisioningState,
      'referencedResources': ?referencedResources,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory SolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPropertiesResponse(
      containedResources: map['containedResources'] == null ? null : ((map['containedResources']! as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      referencedResources: map['referencedResources'] == null ? null : ((map['referencedResources']! as List).cast<String>()).input(),
      workspaceResourceId: (map['workspaceResourceId'] as String).input(),
    );
  }
}

