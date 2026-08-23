// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_online_store_args_doc}
/// Arguments for getFeatureOnlineStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_online_store_args_doc}
class GetFeatureOnlineStoreArgs {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureOnlineStoreArgs].
  /// [featureOnlineStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetFeatureOnlineStoreArgs({
    required this.featureOnlineStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStoreId': featureOnlineStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreArgs(
      featureOnlineStoreId: pulumi.Input.fromValue(map['featureOnlineStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
