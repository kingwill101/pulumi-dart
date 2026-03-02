// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
class PacketCaptureMachineScopeResponse {
  /// List of AzureVMSS instances which has to be excluded from the AzureVMSS from running packet capture.
  final pulumi.Input<List<String>>? exclude;
  /// List of AzureVMSS instances to run packet capture on.
  final pulumi.Input<List<String>>? include;

  /// Creates a new [PacketCaptureMachineScopeResponse].
  /// [exclude] List of AzureVMSS instances which has to be excluded from the AzureVMSS from running packet capture.
  /// [include] List of AzureVMSS instances to run packet capture on.
  PacketCaptureMachineScopeResponse({
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?exclude,
      'include': ?include,
    };
  }

  factory PacketCaptureMachineScopeResponse.fromMap(Map<String, dynamic> map) {
    return PacketCaptureMachineScopeResponse(
      exclude: map['exclude'] == null ? null : ((map['exclude']! as List).cast<String>()).input(),
      include: map['include'] == null ? null : ((map['include']! as List).cast<String>()).input(),
    );
  }
}

