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
    required pulumi.Output<String> authConfigId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
  }) :
      authConfigId = pulumi.Input.asInput<String>(authConfigId),
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      authConfigId: pulumi.Output.create<String>(map['authConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

