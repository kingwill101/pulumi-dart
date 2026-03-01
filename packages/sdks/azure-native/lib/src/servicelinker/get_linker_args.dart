// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicelinker_get_linker_args_doc}
/// Arguments for getLinker.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_get_linker_args_doc}
class GetLinkerArgs {
  /// The name Linker resource.
  final pulumi.Input<String> linkerName;
  /// The fully qualified Azure Resource manager identifier of the resource to be connected.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLinkerArgs].
  /// [linkerName] The name Linker resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource to be connected.
  GetLinkerArgs({
    required pulumi.Output<String> linkerName,
    required pulumi.Output<String> resourceUri,
  }) :
      linkerName = pulumi.Input.asInput<String>(linkerName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkerName': linkerName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLinkerArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkerArgs(
      linkerName: pulumi.Output.create<String>(map['linkerName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

