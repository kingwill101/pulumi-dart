// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Sitemap resources.
class SitemapState {
  /// Timestamp when the sitemap was created.
  final pulumi.Input<String>? createTime;
  /// The unique id of the data store.
  final pulumi.Input<String>? dataStoreId;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the sitemap. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/sitemaps/{sitemap_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The unique id of the sitemap.
  final pulumi.Input<String>? sitemapId;
  /// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  final pulumi.Input<String>? uri;

  /// Creates a new [SitemapState].
  /// [createTime] Timestamp when the sitemap was created.
  /// [dataStoreId] The unique id of the data store.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the sitemap. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [sitemapId] The unique id of the sitemap.
  /// [uri] Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  SitemapState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataStoreId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? sitemapId,
    pulumi.Output<String>? uri,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataStoreId = pulumi.Input.asOptionalInput<String>(dataStoreId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      sitemapId = pulumi.Input.asOptionalInput<String>(sitemapId),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataStoreId': ?dataStoreId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sitemapId': ?sitemapId,
      'uri': ?uri,
    };
  }

  factory SitemapState.fromMap(Map<String, dynamic> map) {
    return SitemapState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataStoreId: map['dataStoreId'] == null ? null : pulumi.Output.create<String>(map['dataStoreId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sitemapId: map['sitemapId'] == null ? null : pulumi.Output.create<String>(map['sitemapId'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

