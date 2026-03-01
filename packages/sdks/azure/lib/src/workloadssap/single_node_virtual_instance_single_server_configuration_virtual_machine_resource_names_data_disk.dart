// ignore_for_file: unused_element, unnecessary_cast


class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk {
  /// A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  final List<String> names;
  /// The name of the Volume. The only possible value is `default`. Changing this forces a new resource to be created.
  final String volumeName;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk].
  /// [names] A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  /// [volumeName] The name of the Volume. The only possible value is `default`. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk({
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
      names: (map['names'] as List).cast<String>(),
      volumeName: map['volumeName'] as String,
    );
  }
}

