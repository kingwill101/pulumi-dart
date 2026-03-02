// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> versionId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionArgs].
  /// [appId] Required.
  /// [serviceId] Required.
  /// [versionId] Required.
  /// [view] Optional.
  GetVersionArgs({
    required this.appId,
    required this.serviceId,
    required this.versionId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'serviceId': serviceId,
      'versionId': versionId,
      'view': ?view,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      appId: (map['appId'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}

