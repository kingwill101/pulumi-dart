// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_sitemap_sitemap_args_doc}
/// The set of arguments for Sitemap.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_sitemap_sitemap_args_doc}
class SitemapArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  final pulumi.Input<String>? uri;

  /// Creates a new [SitemapArgs].
  /// [dataStoreId] The unique id of the data store.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [uri] Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  const SitemapArgs({
    required this.dataStoreId,
    required this.location,
    this.project,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
      'uri': ?uri,
    };
  }

  factory SitemapArgs.fromMap(Map<String, dynamic> map) {
    return SitemapArgs(
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

