// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDeploymentScriptAzureCliContainer {
  /// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.
  final pulumi.Input<String>? containerGroupName;

  /// Creates a new [ResourceDeploymentScriptAzureCliContainer].
  /// [containerGroupName] Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.
  ResourceDeploymentScriptAzureCliContainer({
    this.containerGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': ?containerGroupName,
    };
  }

  factory ResourceDeploymentScriptAzureCliContainer.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptAzureCliContainer(
      containerGroupName: map['containerGroupName'] == null ? null : (map['containerGroupName']! as String).input(),
    );
  }
}

