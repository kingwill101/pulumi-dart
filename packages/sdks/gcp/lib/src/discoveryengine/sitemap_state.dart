// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Sitemap resources.
class SitemapState {
  /// Timestamp when the sitemap was created.
  final pulumi.Input<String?>? createTime;
  /// The unique id of the data store.
  final pulumi.Input<String?>? dataStoreId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String?>? location;
  /// The unique full resource name of the sitemap. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/sitemaps/{sitemap_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The unique id of the sitemap.
  final pulumi.Input<String?>? sitemapId;
  /// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  final pulumi.Input<String?>? uri;

  /// Creates a new [SitemapState].
  /// [createTime] Timestamp when the sitemap was created.
  /// [dataStoreId] The unique id of the data store.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the sitemap. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [sitemapId] The unique id of the sitemap.
  /// [uri] Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  const SitemapState({
    this.createTime,
    this.dataStoreId,
    this.deletionPolicy,
    this.location,
    this.name,
    this.project,
    this.sitemapId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataStoreId': ?dataStoreId,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sitemapId': ?sitemapId,
      'uri': ?uri,
    };
  }

  factory SitemapState.fromMap(Map<String, dynamic> map) {
    return SitemapState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStoreId: (() { final guardedValue = map['dataStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sitemapId: (() { final guardedValue = map['sitemapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
