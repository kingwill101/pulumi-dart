// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_catalog_adogit.dart';
import 'get_catalog_catalog_github.dart';

/// Result data returned by getCatalog.
class GetCatalogResult {
  /// A `catalogAdogit` block as defined below.
  final List<GetCatalogCatalogAdogit>? catalogAdogits;
  /// A `catalogGithub` block as defined below.
  final List<GetCatalogCatalogGithub>? catalogGithubs;
  final String? devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;

  /// Creates a new [GetCatalogResult].
  /// [catalogAdogits] A `catalogAdogit` block as defined below.
  /// [catalogGithubs] A `catalogGithub` block as defined below.
  /// [devCenterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  const GetCatalogResult({
    this.catalogAdogits,
    this.catalogGithubs,
    this.devCenterId,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdogits': ?(() { final guardedValue = catalogAdogits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogCatalogAdogit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'catalogGithubs': ?(() { final guardedValue = catalogGithubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogCatalogGithub, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'devCenterId': ?devCenterId,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      catalogAdogits: (() { final guardedValue = map['catalogAdogits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogCatalogAdogit>(guardedValue, (value) => GetCatalogCatalogAdogit.fromMap((value as Map).cast<String, dynamic>())); })(),
      catalogGithubs: (() { final guardedValue = map['catalogGithubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogCatalogGithub>(guardedValue, (value) => GetCatalogCatalogGithub.fromMap((value as Map).cast<String, dynamic>())); })(),
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
