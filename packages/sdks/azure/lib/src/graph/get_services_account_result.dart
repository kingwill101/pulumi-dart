// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServicesAccount.
class GetServicesAccountResult {
  /// The application ID associated with the Graph Services Account.
  final String? applicationId;
  /// The billing plan ID for the Graph Services Account.
  final String? billingPlanId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Graph Services Account.
  final Map<String, String>? tags;

  /// Creates a new [GetServicesAccountResult].
  /// [applicationId] The application ID associated with the Graph Services Account.
  /// [billingPlanId] The billing plan ID for the Graph Services Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Graph Services Account.
  const GetServicesAccountResult({
    this.applicationId,
    this.billingPlanId,
    this.id,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'billingPlanId': ?billingPlanId,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetServicesAccountResult.fromMap(Map<String, dynamic> map) {
    return GetServicesAccountResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingPlanId: (() { final guardedValue = map['billingPlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
