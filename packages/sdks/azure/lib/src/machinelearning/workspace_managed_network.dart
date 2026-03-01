// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceManagedNetwork {
  /// The isolation mode of the Machine Learning Workspace. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  final String? isolationMode;
  /// Set to trigger the provisioning of the managed VNet with the default options when creating a Machine Learning Workspace with the managed VNet enabled. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? provisionOnCreationEnabled;

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
      isolationMode: map['isolationMode'] == null ? null : map['isolationMode'] as String,
      provisionOnCreationEnabled: map['provisionOnCreationEnabled'] == null ? null : map['provisionOnCreationEnabled'] as bool,
    );
  }
}

