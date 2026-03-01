// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_sfdc_channel_args_doc}
/// Arguments for getSfdcChannel.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_sfdc_channel_args_doc}
class GetSfdcChannelArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcChannelId;
  final pulumi.Input<String> sfdcInstanceId;

  /// Creates a new [GetSfdcChannelArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [sfdcChannelId] Required.
  /// [sfdcInstanceId] Required.
  GetSfdcChannelArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sfdcChannelId,
    required pulumi.Output<String> sfdcInstanceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sfdcChannelId = pulumi.Input.asInput<String>(sfdcChannelId),
      sfdcInstanceId = pulumi.Input.asInput<String>(sfdcInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productId': productId,
      'project': ?project,
      'sfdcChannelId': sfdcChannelId,
      'sfdcInstanceId': sfdcInstanceId,
    };
  }

  factory GetSfdcChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetSfdcChannelArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sfdcChannelId: pulumi.Output.create<String>(map['sfdcChannelId'] as String),
      sfdcInstanceId: pulumi.Output.create<String>(map['sfdcInstanceId'] as String),
    );
  }
}

