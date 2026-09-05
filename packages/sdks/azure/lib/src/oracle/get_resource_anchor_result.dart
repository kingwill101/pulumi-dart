// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceAnchor.
class GetResourceAnchorResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  final String? linkedCompartmentId;
  /// The Azure Region where the Oracle Resource Anchor exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Oracle Resource Anchor.
  final Map<String, String>? tags;

  /// Creates a new [GetResourceAnchorResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkedCompartmentId] Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  /// [location] The Azure Region where the Oracle Resource Anchor exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Oracle Resource Anchor.
  const GetResourceAnchorResult({
    this.id,
    this.linkedCompartmentId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'linkedCompartmentId': ?linkedCompartmentId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetResourceAnchorResult.fromMap(Map<String, dynamic> map) {
    return GetResourceAnchorResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedCompartmentId: (() { final guardedValue = map['linkedCompartmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
