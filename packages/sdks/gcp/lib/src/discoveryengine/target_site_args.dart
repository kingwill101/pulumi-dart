// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_target_site_target_site_args_doc}
/// The set of arguments for TargetSite.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_target_site_target_site_args_doc}
class TargetSiteArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If set to false, a uriPattern is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an uriPattern
  /// is generated to try to be an exact match of the providedUriPattern or
  /// just the specific page if the providedUriPattern is a specific one.
  /// providedUriPattern is always normalized to generate the URI pattern to
  /// be used by the search engine.
  final pulumi.Input<bool?>? exactMatch;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The user provided URI pattern from which the `generatedUriPattern` is
  /// generated.
  final pulumi.Input<String> providedUriPattern;
  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  final pulumi.Input<String?>? type;

  /// Creates a new [TargetSiteArgs].
  /// [dataStoreId] The unique id of the data store.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [exactMatch] If set to false, a uriPattern is generated to include all pages whose
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [providedUriPattern] The user provided URI pattern from which the `generatedUriPattern` is
  /// [type] The possible target site types.
  const TargetSiteArgs({
    required this.dataStoreId,
    this.deletionPolicy,
    this.exactMatch,
    required this.location,
    this.project,
    required this.providedUriPattern,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': dataStoreId,
      'deletionPolicy': ?deletionPolicy,
      'exactMatch': ?exactMatch,
      'location': location,
      'project': ?project,
      'providedUriPattern': providedUriPattern,
      'type': ?type,
    };
  }

  factory TargetSiteArgs.fromMap(Map<String, dynamic> map) {
    return TargetSiteArgs(
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providedUriPattern: pulumi.Input.fromValue(map['providedUriPattern'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
