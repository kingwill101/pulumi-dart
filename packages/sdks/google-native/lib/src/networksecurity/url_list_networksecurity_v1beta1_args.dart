// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_url_list_networksecurity_v1beta1_args_doc}
/// The set of arguments for UrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_url_list_networksecurity_v1beta1_args_doc}
class UrlListNetworksecurityV1beta1Args {
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  final pulumi.Input<String> urlListId;
  /// FQDNs and URLs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [UrlListNetworksecurityV1beta1Args].
  /// [description] Optional. Free-text description of the resource.
  /// [location] Optional.
  /// [name] Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [project] Optional.
  /// [urlListId] Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  /// [values] FQDNs and URLs.
  const UrlListNetworksecurityV1beta1Args({
    this.description,
    this.location,
    this.name,
    this.project,
    required this.urlListId,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'urlListId': urlListId,
      'values': values,
    };
  }

  factory UrlListNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return UrlListNetworksecurityV1beta1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlListId: pulumi.Input.fromValue(map['urlListId'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
