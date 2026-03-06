// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDevBoxDefinition.
class GetDevBoxDefinitionResult {
  final String devCenterId;
  /// Whether Dev Boxes created with this definition are capable of hibernation.
  final bool hibernateSupportEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the image for the Dev Center Dev Box Definition.
  final String imageReferenceId;
  /// The Azure Region where the Dev Center Dev Box Definition exists.
  final String location;
  final String name;
  /// The name of the SKU for the Dev Center Dev Box Definition.
  final String skuName;
  /// A mapping of tags assigned to the Dev Center Dev Box Definition.
  final Map<String, String> tags;

  /// Creates a new [GetDevBoxDefinitionResult].
  /// [devCenterId] Required.
  /// [hibernateSupportEnabled] Whether Dev Boxes created with this definition are capable of hibernation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageReferenceId] The ID of the image for the Dev Center Dev Box Definition.
  /// [location] The Azure Region where the Dev Center Dev Box Definition exists.
  /// [name] Required.
  /// [skuName] The name of the SKU for the Dev Center Dev Box Definition.
  /// [tags] A mapping of tags assigned to the Dev Center Dev Box Definition.
  const GetDevBoxDefinitionResult({
    required this.devCenterId,
    required this.hibernateSupportEnabled,
    required this.id,
    required this.imageReferenceId,
    required this.location,
    required this.name,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'hibernateSupportEnabled': hibernateSupportEnabled,
      'id': id,
      'imageReferenceId': imageReferenceId,
      'location': location,
      'name': name,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetDevBoxDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionResult(
      devCenterId: map['devCenterId'] as String,
      hibernateSupportEnabled: map['hibernateSupportEnabled'] as bool,
      id: map['id'] as String,
      imageReferenceId: map['imageReferenceId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

