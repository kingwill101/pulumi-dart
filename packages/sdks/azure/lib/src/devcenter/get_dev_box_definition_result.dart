// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDevBoxDefinition.
class GetDevBoxDefinitionResult {
  final String? devCenterId;
  /// Whether Dev Boxes created with this definition are capable of hibernation.
  final bool? hibernateSupportEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the image for the Dev Center Dev Box Definition.
  final String? imageReferenceId;
  /// The Azure Region where the Dev Center Dev Box Definition exists.
  final String? location;
  final String? name;
  /// The name of the SKU for the Dev Center Dev Box Definition.
  final String? skuName;
  /// A mapping of tags assigned to the Dev Center Dev Box Definition.
  final Map<String, String>? tags;

  /// Creates a new [GetDevBoxDefinitionResult].
  /// [devCenterId] Optional.
  /// [hibernateSupportEnabled] Whether Dev Boxes created with this definition are capable of hibernation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageReferenceId] The ID of the image for the Dev Center Dev Box Definition.
  /// [location] The Azure Region where the Dev Center Dev Box Definition exists.
  /// [name] Optional.
  /// [skuName] The name of the SKU for the Dev Center Dev Box Definition.
  /// [tags] A mapping of tags assigned to the Dev Center Dev Box Definition.
  const GetDevBoxDefinitionResult({
    this.devCenterId,
    this.hibernateSupportEnabled,
    this.id,
    this.imageReferenceId,
    this.location,
    this.name,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'hibernateSupportEnabled': ?hibernateSupportEnabled,
      'id': ?id,
      'imageReferenceId': ?imageReferenceId,
      'location': ?location,
      'name': ?name,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetDevBoxDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionResult(
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hibernateSupportEnabled: (() { final guardedValue = map['hibernateSupportEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageReferenceId: (() { final guardedValue = map['imageReferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
