// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk {
  /// A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> names;
  /// The name of the Volume. The only possible value is `default`. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeName;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk].
  /// [names] A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  /// [volumeName] The name of the Volume. The only possible value is `default`. Changing this forces a new resource to be created.
  const SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk({
    required this.names,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'volumeName': volumeName,
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk(
      names: pulumi.Input.fromValue((map['names'] as List).cast<String>()),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

