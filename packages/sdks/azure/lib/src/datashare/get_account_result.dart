// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_identity.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetAccountIdentity>? identities;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Data Share Account.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Data Share Account.
  const GetAccountResult({
    this.id,
    this.identities,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountIdentity>(guardedValue, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
