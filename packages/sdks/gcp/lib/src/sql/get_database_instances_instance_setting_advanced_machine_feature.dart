// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingAdvancedMachineFeature {
  /// The number of threads per physical core. Can be 1 or 2.
  final pulumi.Input<int> threadsPerCore;

  /// Creates a new [GetDatabaseInstancesInstanceSettingAdvancedMachineFeature].
  /// [threadsPerCore] The number of threads per physical core. Can be 1 or 2.
  GetDatabaseInstancesInstanceSettingAdvancedMachineFeature({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': threadsPerCore,
    };
  }

  factory GetDatabaseInstancesInstanceSettingAdvancedMachineFeature.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingAdvancedMachineFeature(
      threadsPerCore: (map['threadsPerCore'] as int).input(),
    );
  }
}

