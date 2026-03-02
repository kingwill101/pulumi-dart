// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_url_list_url_list_args_doc}
/// The set of arguments for UrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_url_list_url_list_args_doc}
class UrlListArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// The location of the url lists.
  final pulumi.Input<String> location;
  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// FQDNs and URLs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [UrlListArgs].
  /// [description] Free-text description of the resource.
  /// [location] The location of the url lists.
  /// [name] Short name of the UrlList resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [values] FQDNs and URLs.
  UrlListArgs({
    this.description,
    required this.location,
    this.name,
    this.project,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'name': ?name,
      'project': ?project,
      'values': values,
    };
  }

  factory UrlListArgs.fromMap(Map<String, dynamic> map) {
    return UrlListArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

