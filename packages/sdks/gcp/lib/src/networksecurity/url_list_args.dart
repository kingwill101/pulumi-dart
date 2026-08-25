// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_url_list_url_list_args_doc}
/// The set of arguments for UrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_url_list_url_list_args_doc}
class UrlListArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Free-text description of the resource.
  final pulumi.Input<String?>? description;
  /// The location of the url lists.
  final pulumi.Input<String> location;
  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// FQDNs and URLs.
  final pulumi.Input<List<String>> values;

  /// Creates a new [UrlListArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description of the resource.
  /// [location] The location of the url lists.
  /// [name] Short name of the UrlList resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [values] FQDNs and URLs.
  const UrlListArgs({
    this.deletionPolicy,
    this.description,
    required this.location,
    this.name,
    this.project,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': location,
      'name': ?name,
      'project': ?project,
      'values': values,
    };
  }

  factory UrlListArgs.fromMap(Map<String, dynamic> map) {
    return UrlListArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
