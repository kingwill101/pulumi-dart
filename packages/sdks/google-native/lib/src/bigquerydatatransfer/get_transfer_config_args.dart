// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatatransfer_v1_get_transfer_config_args_doc}
/// Arguments for getTransferConfig.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatatransfer_v1_get_transfer_config_args_doc}
class GetTransferConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transferConfigId;

  /// Creates a new [GetTransferConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [transferConfigId] Required.
  GetTransferConfigArgs({
    required this.location,
    this.project,
    required this.transferConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'transferConfigId': transferConfigId,
    };
  }

  factory GetTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferConfigArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transferConfigId: pulumi.Input.fromValue(
        map['transferConfigId'] as String,
      ),
    );
  }
}
