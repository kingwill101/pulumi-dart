// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServicesAccount.
class GetServicesAccountResult {
  /// The application ID associated with the Graph Services Account.
  final String applicationId;
  /// The billing plan ID for the Graph Services Account.
  final String billingPlanId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Graph Services Account.
  final Map<String, String> tags;

  /// Creates a new [GetServicesAccountResult].
  /// [applicationId] The application ID associated with the Graph Services Account.
  /// [billingPlanId] The billing plan ID for the Graph Services Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Graph Services Account.
  const GetServicesAccountResult({
    required this.applicationId,
    required this.billingPlanId,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'billingPlanId': billingPlanId,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetServicesAccountResult.fromMap(Map<String, dynamic> map) {
    return GetServicesAccountResult(
      applicationId: map['applicationId'] as String,
      billingPlanId: map['billingPlanId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

