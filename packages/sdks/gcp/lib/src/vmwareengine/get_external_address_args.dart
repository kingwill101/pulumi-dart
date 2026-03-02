// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_external_address_get_external_address_args_doc}
/// Arguments for getExternalAddress.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_external_address_get_external_address_args_doc}
class GetExternalAddressArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The resource name of the private cloud that this cluster belongs.
  final pulumi.Input<String> parent;

  /// Creates a new [GetExternalAddressArgs].
  /// [name] Name of the resource.
  /// [parent] The resource name of the private cloud that this cluster belongs.
  GetExternalAddressArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': parent,
    };
  }

  factory GetExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressArgs(
      name: (map['name'] as String).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

