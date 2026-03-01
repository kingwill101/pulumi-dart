// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceAnchor.
class GetResourceAnchorResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  final String linkedCompartmentId;
  /// The Azure Region where the Oracle Resource Anchor exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Oracle Resource Anchor.
  final Map<String, String> tags;

  /// Creates a new [GetResourceAnchorResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkedCompartmentId] Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  /// [location] The Azure Region where the Oracle Resource Anchor exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Oracle Resource Anchor.
  GetResourceAnchorResult({
    required this.id,
    required this.linkedCompartmentId,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'linkedCompartmentId': linkedCompartmentId,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetResourceAnchorResult.fromMap(Map<String, dynamic> map) {
    return GetResourceAnchorResult(
      id: map['id'] as String,
      linkedCompartmentId: map['linkedCompartmentId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

