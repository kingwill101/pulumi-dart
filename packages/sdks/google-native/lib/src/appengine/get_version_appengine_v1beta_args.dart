// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
class GetVersionAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> versionId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionAppengineV1betaArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  /// [serviceId] Required.
  /// [versionId] Required.
  /// [view] Optional.
  GetVersionAppengineV1betaArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? includeExtraData,
    required pulumi.Output<String> serviceId,
    required pulumi.Output<String> versionId,
    pulumi.Output<String>? view,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      includeExtraData = pulumi.Input.asOptionalInput<String>(includeExtraData),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      versionId = pulumi.Input.asInput<String>(versionId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'includeExtraData': ?includeExtraData,
      'serviceId': serviceId,
      'versionId': versionId,
      'view': ?view,
    };
  }

  factory GetVersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionAppengineV1betaArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      includeExtraData: map['includeExtraData'] == null ? null : pulumi.Output.create<String>(map['includeExtraData'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

