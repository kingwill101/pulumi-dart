// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_nsx_credentials_get_nsx_credentials_args_doc}
/// Arguments for getNsxCredentials.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_nsx_credentials_get_nsx_credentials_args_doc}
class GetNsxCredentialsArgs {
  /// The resource name of the private cloud which contains the NSX.
  final pulumi.Input<String> parent;

  /// Creates a new [GetNsxCredentialsArgs].
  /// [parent] The resource name of the private cloud which contains the NSX.
  GetNsxCredentialsArgs({
    required pulumi.Output<String> parent,
  }) :
      parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
    };
  }

  factory GetNsxCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNsxCredentialsArgs(
      parent: pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

