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
    pulumi.Output<String>? dryrunName,
    pulumi.Output<CreateOrUpdateDryrunParameters>? parameters,
    required pulumi.Output<String> resourceUri,
  }) :
      dryrunName = pulumi.Input.asOptionalInput<String>(dryrunName),
      parameters = pulumi.Input.asOptionalInput<CreateOrUpdateDryrunParameters>(parameters),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryrunName': ?dryrunName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<CreateOrUpdateDryrunParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory LinkerDryrunArgs.fromMap(Map<String, dynamic> map) {
    return LinkerDryrunArgs(
      dryrunName: map['dryrunName'] == null ? null : pulumi.Output.create<String>(map['dryrunName'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<CreateOrUpdateDryrunParameters>(CreateOrUpdateDryrunParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

