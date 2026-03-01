// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_target_site_target_site_args_doc}
/// The set of arguments for TargetSite.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_target_site_target_site_args_doc}
class TargetSiteArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;
  /// If set to false, a uri_pattern is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an uri_pattern
  /// is generated to try to be an exact match of the provided_uri_pattern or
  /// just the specific page if the provided_uri_pattern is a specific one.
  /// provided_uri_pattern is always normalized to generate the URI pattern to
  /// be used by the search engine.
  final pulumi.Input<bool>? exactMatch;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user provided URI pattern from which the `generated_uri_pattern` is
  /// generated.
  final pulumi.Input<String> providedUriPattern;
  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  final pulumi.Input<String>? type;

  /// Creates a new [TargetSiteArgs].
  /// [dataStoreId] The unique id of the data store.
  /// [exactMatch] If set to false, a uri_pattern is generated to include all pages whose
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [providedUriPattern] The user provided URI pattern from which the `generated_uri_pattern` is
  /// [type] The possible target site types.
  TargetSiteArgs({
    required pulumi.Output<String> dataStoreId,
    pulumi.Output<bool>? exactMatch,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> providedUriPattern,
    pulumi.Output<String>? type,
  }) :
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      exactMatch = pulumi.Input.asOptionalInput<bool>(exactMatch),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      providedUriPattern = pulumi.Input.asInput<String>(providedUriPattern),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': dataStoreId,
      'exactMatch': ?exactMatch,
      'location': location,
      'project': ?project,
      'providedUriPattern': providedUriPattern,
      'type': ?type,
    };
  }

  factory TargetSiteArgs.fromMap(Map<String, dynamic> map) {
    return TargetSiteArgs(
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      exactMatch: map['exactMatch'] == null ? null : pulumi.Output.create<bool>(map['exactMatch'] as bool),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      providedUriPattern: pulumi.Output.create<String>(map['providedUriPattern'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

