// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the On Premise resource that was assessed
class OnPremiseResourceDetailsResponse {
  /// The name of the machine
  final pulumi.Input<String> machineName;

  /// The platform where the assessed resource resides
  /// Expected value is 'OnPremise'.
  final pulumi.Input<String> source;

  /// The oms agent Id installed on the machine
  final pulumi.Input<String> sourceComputerId;

  /// The unique Id of the machine
  final pulumi.Input<String> vmuuid;

  /// Azure resource Id of the workspace the machine is attached to
  final pulumi.Input<String> workspaceId;

  /// Creates a new [OnPremiseResourceDetailsResponse].
  /// [machineName] The name of the machine
  /// [source] The platform where the assessed resource resides
  /// [sourceComputerId] The oms agent Id installed on the machine
  /// [vmuuid] The unique Id of the machine
  /// [workspaceId] Azure resource Id of the workspace the machine is attached to
  OnPremiseResourceDetailsResponse({
    required this.machineName,
    required this.source,
    required this.sourceComputerId,
    required this.vmuuid,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineName': machineName,
      'source': source,
      'sourceComputerId': sourceComputerId,
      'vmuuid': vmuuid,
      'workspaceId': workspaceId,
    };
  }

  factory OnPremiseResourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OnPremiseResourceDetailsResponse(
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceComputerId: pulumi.Input.fromValue(
        map['sourceComputerId'] as String,
      ),
      vmuuid: pulumi.Input.fromValue(map['vmuuid'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
