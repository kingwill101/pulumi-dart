// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicelinker_list_linker_configurations_args_doc}
/// Arguments for listLinkerConfigurations.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_list_linker_configurations_args_doc}
class ListLinkerConfigurationsArgs {
  /// The name Linker resource.
  final pulumi.Input<String> linkerName;
  /// The fully qualified Azure Resource manager identifier of the resource to be connected.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ListLinkerConfigurationsArgs].
  /// [linkerName] The name Linker resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource to be connected.
  const ListLinkerConfigurationsArgs({
    required this.linkerName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkerName': linkerName,
      'resourceUri': resourceUri,
    };
  }

  factory ListLinkerConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return ListLinkerConfigurationsArgs(
      linkerName: pulumi.Input.fromValue(map['linkerName'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

