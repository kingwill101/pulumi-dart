// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_hybrid_identity_metadata_args_doc}
/// The set of arguments for HybridIdentityMetadata.
/// {@endtemplate}
/// {@macro pulumi_scvmm_hybrid_identity_metadata_args_doc}
class HybridIdentityMetadataArgs {
  /// Name of the hybridIdentityMetadata.
  final pulumi.Input<String>? metadataName;

  /// Gets or sets the Public Key.
  final pulumi.Input<String>? publicKey;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Gets or sets the Vm Id.
  final pulumi.Input<String>? resourceUid;

  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [HybridIdentityMetadataArgs].
  /// [metadataName] Name of the hybridIdentityMetadata.
  /// [publicKey] Gets or sets the Public Key.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceUid] Gets or sets the Vm Id.
  /// [virtualMachineName] Name of the vm.
  HybridIdentityMetadataArgs({
    this.metadataName,
    this.publicKey,
    required this.resourceGroupName,
    this.resourceUid,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': ?metadataName,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceUid': ?resourceUid,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory HybridIdentityMetadataArgs.fromMap(Map<String, dynamic> map) {
    return HybridIdentityMetadataArgs(
      metadataName: (() {
        final guardedValue = map['metadataName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKey: (() {
        final guardedValue = map['publicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceUid: (() {
        final guardedValue = map['resourceUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualMachineName: pulumi.Input.fromValue(
        map['virtualMachineName'] as String,
      ),
    );
  }
}
