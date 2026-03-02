// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_solutions_get_jit_request_args_doc}
/// Arguments for getJitRequest.
/// {@endtemplate}
/// {@macro pulumi_solutions_get_jit_request_args_doc}
class GetJitRequestArgs {
  /// The name of the JIT request.
  final pulumi.Input<String> jitRequestName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetJitRequestArgs].
  /// [jitRequestName] The name of the JIT request.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetJitRequestArgs({
    required this.jitRequestName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jitRequestName': jitRequestName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetJitRequestArgs.fromMap(Map<String, dynamic> map) {
    return GetJitRequestArgs(
      jitRequestName: (map['jitRequestName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

