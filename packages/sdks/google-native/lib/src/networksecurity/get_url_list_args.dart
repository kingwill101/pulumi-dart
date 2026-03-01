// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_url_list_args_doc}
/// Arguments for getUrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_url_list_args_doc}
class GetUrlListArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlListId;

  /// Creates a new [GetUrlListArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [urlListId] Required.
  GetUrlListArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> urlListId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      urlListId = pulumi.Input.asInput<String>(urlListId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'urlListId': urlListId,
    };
  }

  factory GetUrlListArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlListArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      urlListId: pulumi.Output.create<String>(map['urlListId'] as String),
    );
  }
}

