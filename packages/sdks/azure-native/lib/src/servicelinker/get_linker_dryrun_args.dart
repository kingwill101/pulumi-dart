// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicelinker_get_linker_dryrun_args_doc}
/// Arguments for getLinkerDryrun.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_get_linker_dryrun_args_doc}
class GetLinkerDryrunArgs {
  /// The name of dryrun.
  final pulumi.Input<String> dryrunName;
  /// The fully qualified Azure Resource manager identifier of the resource to be connected.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLinkerDryrunArgs].
  /// [dryrunName] The name of dryrun.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource to be connected.
  const GetLinkerDryrunArgs({
    required this.dryrunName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryrunName': dryrunName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLinkerDryrunArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkerDryrunArgs(
      dryrunName: pulumi.Input.fromValue(map['dryrunName'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
