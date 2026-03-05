// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk {
  /// A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> names;
  /// The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Possible value for Application Server and Central Server is `default`.
  ///
  /// &gt; **Note:** Possible values for Database Server are `hanaData`, `hanaLog`, `hanaShared` and `usrSap`.
  final pulumi.Input<String> volumeName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk].
  /// [names] A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
  /// [volumeName] The name of the Volume. Possible values are `default`, `hanaData`, `hanaLog`, `hanaShared` and `usrSap`. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk({
    required this.names,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'volumeName': volumeName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk(
      names: pulumi.Input.fromValue((map['names'] as List).cast<String>()),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

