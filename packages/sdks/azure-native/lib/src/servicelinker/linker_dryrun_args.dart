// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_or_update_dryrun_parameters.dart';

/// {@template pulumi_servicelinker_linker_dryrun_args_doc}
/// The set of arguments for LinkerDryrun.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_linker_dryrun_args_doc}
class LinkerDryrunArgs {
  /// The name of dryrun.
  final pulumi.Input<String>? dryrunName;
  /// The parameters of the dryrun
  final pulumi.Input<CreateOrUpdateDryrunParameters>? parameters;
  /// The fully qualified Azure Resource manager identifier of the resource to be connected.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [LinkerDryrunArgs].
  /// [dryrunName] The name of dryrun.
  /// [parameters] The parameters of the dryrun
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource to be connected.
  LinkerDryrunArgs({
    this.dryrunName,
    this.parameters,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryrunName': ?dryrunName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<CreateOrUpdateDryrunParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory LinkerDryrunArgs.fromMap(Map<String, dynamic> map) {
    return LinkerDryrunArgs(
      dryrunName: map['dryrunName'] == null ? null : (map['dryrunName']! as String).input(),
      parameters: map['parameters'] == null ? null : (CreateOrUpdateDryrunParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

