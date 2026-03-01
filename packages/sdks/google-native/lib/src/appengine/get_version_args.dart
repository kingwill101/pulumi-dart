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
    required pulumi.Output<String> appId,
    required pulumi.Output<String> serviceId,
    required pulumi.Output<String> versionId,
    pulumi.Output<String>? view,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      versionId = pulumi.Input.asInput<String>(versionId),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      appId: pulumi.Output.create<String>(map['appId'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

