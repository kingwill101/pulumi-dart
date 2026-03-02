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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      transferConfigId: (map['transferConfigId'] as String).input(),
    );
  }
}

