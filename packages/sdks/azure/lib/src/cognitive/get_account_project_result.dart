// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_project_identity.dart';

/// Result data returned by getAccountProject.
class GetAccountProjectResult {
  final String cognitiveAccountName;
  /// Whether this is the default project for the Cognitive Services Account.
  final bool default_;
  /// The description of the Cognitive Services Account Project.
  final String description;
  /// The display name of the Cognitive Services Account Project.
  final String displayName;
  /// A mapping of endpoint names to endpoint URLs for the Cognitive Services Account Project.
  final Map<String, String> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetAccountProjectIdentity> identities;
  /// The Azure Region where the Cognitive Services Account Project exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Cognitive Services Account Project.
  final Map<String, String> tags;

  /// Creates a new [GetAccountProjectResult].
  /// [cognitiveAccountName] Required.
  /// [default_] Whether this is the default project for the Cognitive Services Account.
  /// [description] The description of the Cognitive Services Account Project.
  /// [displayName] The display name of the Cognitive Services Account Project.
  /// [endpoints] A mapping of endpoint names to endpoint URLs for the Cognitive Services Account Project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Cognitive Services Account Project exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Cognitive Services Account Project.
  const GetAccountProjectResult({
    required this.cognitiveAccountName,
    required this.default_,
    required this.description,
    required this.displayName,
    required this.endpoints,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountName': cognitiveAccountName,
      'default': default_,
      'description': description,
      'displayName': displayName,
      'endpoints': endpoints,
      'id': id,
      'identities': pulumi.Input.encodeList<GetAccountProjectIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetAccountProjectResult.fromMap(Map<String, dynamic> map) {
    return GetAccountProjectResult(
      cognitiveAccountName: map['cognitiveAccountName'] as String,
      default_: map['default'] as bool,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccountProjectIdentity>(map['identities']!, (value) => GetAccountProjectIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
