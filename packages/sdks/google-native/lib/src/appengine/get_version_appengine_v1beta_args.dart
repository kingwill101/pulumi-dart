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
    required this.appId,
    this.includeExtraData,
    required this.serviceId,
    required this.versionId,
    this.view,
  });

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
      appId: (map['appId'] as String).input(),
      includeExtraData: map['includeExtraData'] == null ? null : (map['includeExtraData'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}

