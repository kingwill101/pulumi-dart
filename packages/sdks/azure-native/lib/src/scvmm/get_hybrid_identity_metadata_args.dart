// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_hybrid_identity_metadata_args_doc}
/// Arguments for getHybridIdentityMetadata.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_hybrid_identity_metadata_args_doc}
class GetHybridIdentityMetadataArgs {
  /// Name of the HybridIdentityMetadata.
  final pulumi.Input<String> metadataName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetHybridIdentityMetadataArgs].
  /// [metadataName] Name of the HybridIdentityMetadata.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualMachineName] Name of the vm.
  GetHybridIdentityMetadataArgs({
    required this.metadataName,
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': metadataName,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetHybridIdentityMetadataArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridIdentityMetadataArgs(
      metadataName: (map['metadataName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualMachineName: (map['virtualMachineName'] as String).input(),
    );
  }
}

