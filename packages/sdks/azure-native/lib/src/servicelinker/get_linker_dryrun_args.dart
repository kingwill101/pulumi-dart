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
  GetLinkerDryrunArgs({
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
      dryrunName: (map['dryrunName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

