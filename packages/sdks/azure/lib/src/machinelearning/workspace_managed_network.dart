// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceManagedNetwork {
  /// The isolation mode of the Machine Learning Workspace. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  final pulumi.Input<String>? isolationMode;
  /// Set to trigger the provisioning of the managed VNet with the default options when creating a Machine Learning Workspace with the managed VNet enabled. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? provisionOnCreationEnabled;

  /// Creates a new [WorkspaceManagedNetwork].
  /// [isolationMode] The isolation mode of the Machine Learning Workspace. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  /// [provisionOnCreationEnabled] Set to trigger the provisioning of the managed VNet with the default options when creating a Machine Learning Workspace with the managed VNet enabled. Defaults to `false`. Changing this forces a new resource to be created.
  WorkspaceManagedNetwork({
    this.isolationMode,
    this.provisionOnCreationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationMode': ?isolationMode,
      'provisionOnCreationEnabled': ?provisionOnCreationEnabled,
    };
  }

  factory WorkspaceManagedNetwork.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagedNetwork(
      isolationMode: map['isolationMode'] == null ? null : (map['isolationMode']! as String).input(),
      provisionOnCreationEnabled: map['provisionOnCreationEnabled'] == null ? null : (map['provisionOnCreationEnabled']! as bool).input(),
    );
  }
}

