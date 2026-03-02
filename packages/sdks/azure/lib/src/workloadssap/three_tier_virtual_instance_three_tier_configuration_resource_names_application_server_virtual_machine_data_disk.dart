// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk {
  /// A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> names;
  /// The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible value for Application Server and Central Server is `default`.
  ///
  /// > **Note:** Possible values for Database Server are `hanaData`, `hanaLog`, `hanaShared` and `usrSap`.
  final pulumi.Input<String> volumeName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk].
  /// [names] A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  /// [volumeName] The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk({
    required this.names,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'volumeName': volumeName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachineDataDisk(
      names: ((map['names'] as List).cast<String>()).input(),
      volumeName: (map['volumeName'] as String).input(),
    );
  }
}

