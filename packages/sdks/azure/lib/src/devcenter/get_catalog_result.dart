// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_catalog_adogit.dart';
import 'get_catalog_catalog_github.dart';

/// Result data returned by getCatalog.
class GetCatalogResult {
  /// A `catalog_adogit` block as defined below.
  final List<GetCatalogCatalogAdogit> catalogAdogits;
  /// A `catalog_github` block as defined below.
  final List<GetCatalogCatalogGithub> catalogGithubs;
  final String devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetCatalogResult].
  /// [catalogAdogits] A `catalog_adogit` block as defined below.
  /// [catalogGithubs] A `catalog_github` block as defined below.
  /// [devCenterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  const GetCatalogResult({
    required this.catalogAdogits,
    required this.catalogGithubs,
    required this.devCenterId,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdogits': pulumi.Input.encodeList<GetCatalogCatalogAdogit, Map<String, dynamic>>(catalogAdogits, (value) => value.toMap()),
      'catalogGithubs': pulumi.Input.encodeList<GetCatalogCatalogGithub, Map<String, dynamic>>(catalogGithubs, (value) => value.toMap()),
      'devCenterId': devCenterId,
      'id': id,
      'name': name,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      catalogAdogits: pulumi.Input.decodeList<GetCatalogCatalogAdogit>(map['catalogAdogits']!, (value) => GetCatalogCatalogAdogit.fromMap((value as Map).cast<String, dynamic>())),
      catalogGithubs: pulumi.Input.decodeList<GetCatalogCatalogGithub>(map['catalogGithubs']!, (value) => GetCatalogCatalogGithub.fromMap((value as Map).cast<String, dynamic>())),
      devCenterId: map['devCenterId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

