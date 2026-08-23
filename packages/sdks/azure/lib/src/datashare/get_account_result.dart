// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_identity.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetAccountIdentity> identities;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Data Share Account.
  final Map<String, String> tags;

  /// Creates a new [GetAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Data Share Account.
  const GetAccountResult({
    required this.id,
    required this.identities,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccountIdentity>(map['identities']!, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
