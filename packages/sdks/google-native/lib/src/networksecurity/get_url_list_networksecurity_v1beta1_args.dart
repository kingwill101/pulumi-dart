// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_url_list_networksecurity_v1beta1_args_doc}
/// Arguments for getUrlList.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_url_list_networksecurity_v1beta1_args_doc}
class GetUrlListNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlListId;

  /// Creates a new [GetUrlListNetworksecurityV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [urlListId] Required.
  GetUrlListNetworksecurityV1beta1Args({
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

  factory GetUrlListNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUrlListNetworksecurityV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      urlListId: pulumi.Input.fromValue(map['urlListId'] as String),
    );
  }
}
