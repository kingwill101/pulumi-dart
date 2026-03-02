// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_auth_config_args_doc}
/// Arguments for getAuthConfig.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_auth_config_args_doc}
class GetAuthConfigArgs {
  final pulumi.Input<String> authConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthConfigArgs].
  /// [authConfigId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetAuthConfigArgs({
    required this.authConfigId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigId': authConfigId,
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetAuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthConfigArgs(
      authConfigId: (map['authConfigId'] as String).input(),
      location: (map['location'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

