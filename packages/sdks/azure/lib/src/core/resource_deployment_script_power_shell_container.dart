// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDeploymentScriptPowerShellContainer {
  /// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.
  final pulumi.Input<String>? containerGroupName;

  /// Creates a new [ResourceDeploymentScriptPowerShellContainer].
  /// [containerGroupName] Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.
  ResourceDeploymentScriptPowerShellContainer({
    this.containerGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': ?containerGroupName,
    };
  }

  factory ResourceDeploymentScriptPowerShellContainer.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellContainer(
      containerGroupName: map['containerGroupName'] == null ? null : (map['containerGroupName'] as String).input(),
    );
  }
}

