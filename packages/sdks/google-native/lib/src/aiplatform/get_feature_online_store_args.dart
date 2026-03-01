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
  GetFeatureOnlineStoreArgs({
    required pulumi.Output<String> featureOnlineStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featureOnlineStoreId = pulumi.Input.asInput<String>(featureOnlineStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStoreId': featureOnlineStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreArgs(
      featureOnlineStoreId: pulumi.Output.create<String>(map['featureOnlineStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

