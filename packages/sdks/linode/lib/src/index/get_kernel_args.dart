// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_kernel_get_kernel_args_doc}
/// Arguments for getKernel.
/// {@endtemplate}
/// {@macro pulumi_index_get_kernel_get_kernel_args_doc}
class GetKernelArgs {
  /// The unique ID of this Kernel.
  final pulumi.Input<String> id;

  /// Creates a new [GetKernelArgs].
  /// [id] The unique ID of this Kernel.
  GetKernelArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetKernelArgs.fromMap(Map<String, dynamic> map) {
    return GetKernelArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

