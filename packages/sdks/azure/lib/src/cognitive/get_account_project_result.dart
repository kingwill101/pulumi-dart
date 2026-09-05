// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_project_identity.dart';

/// Result data returned by getAccountProject.
class GetAccountProjectResult {
  final String? cognitiveAccountName;
  /// Whether this is the default project for the Cognitive Services Account.
  final bool? default_;
  /// The description of the Cognitive Services Account Project.
  final String? description;
  /// The display name of the Cognitive Services Account Project.
  final String? displayName;
  /// A mapping of endpoint names to endpoint URLs for the Cognitive Services Account Project.
  final Map<String, String>? endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetAccountProjectIdentity>? identities;
  /// The Azure Region where the Cognitive Services Account Project exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Cognitive Services Account Project.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountProjectResult].
  /// [cognitiveAccountName] Optional.
  /// [default_] Whether this is the default project for the Cognitive Services Account.
  /// [description] The description of the Cognitive Services Account Project.
  /// [displayName] The display name of the Cognitive Services Account Project.
  /// [endpoints] A mapping of endpoint names to endpoint URLs for the Cognitive Services Account Project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Cognitive Services Account Project exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Cognitive Services Account Project.
  const GetAccountProjectResult({
    this.cognitiveAccountName,
    this.default_,
    this.description,
    this.displayName,
    this.endpoints,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountName': ?cognitiveAccountName,
      'default': ?default_,
      'description': ?description,
      'displayName': ?displayName,
      'endpoints': ?endpoints,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountProjectIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetAccountProjectResult.fromMap(Map<String, dynamic> map) {
    return GetAccountProjectResult(
      cognitiveAccountName: (() { final guardedValue = map['cognitiveAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountProjectIdentity>(guardedValue, (value) => GetAccountProjectIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
