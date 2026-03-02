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
    required this.location,
    this.project,
    required this.urlListId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'urlListId': urlListId,
    };
  }

  factory GetUrlListArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlListArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      urlListId: (map['urlListId'] as String).input(),
    );
  }
}

