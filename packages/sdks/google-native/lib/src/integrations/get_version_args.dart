// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [integrationId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArgs({
    required this.integrationId,
    required this.location,
    required this.productId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationId': integrationId,
      'location': location,
      'productId': productId,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      integrationId: (map['integrationId'] as String).input(),
      location: (map['location'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

