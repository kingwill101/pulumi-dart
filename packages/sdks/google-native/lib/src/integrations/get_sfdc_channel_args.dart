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
  const GetSfdcChannelArgs({
    required this.location,
    required this.productId,
    this.project,
    required this.sfdcChannelId,
    required this.sfdcInstanceId,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sfdcChannelId: pulumi.Input.fromValue(map['sfdcChannelId'] as String),
      sfdcInstanceId: pulumi.Input.fromValue(map['sfdcInstanceId'] as String),
    );
  }
}
