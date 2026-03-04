// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceControlSlotGithubActionConfigurationCodeConfiguration {
  /// The value to use for the Runtime Stack in the workflow file content for code base apps. Changing this forces a new resource to be created. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`.
  final pulumi.Input<String> runtimeStack;

  /// The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [SourceControlSlotGithubActionConfigurationCodeConfiguration].
  /// [runtimeStack] The value to use for the Runtime Stack in the workflow file content for code base apps. Changing this forces a new resource to be created. Possible values are `dotnetcore`, `spring`, `tomcat`, `node` and `python`.
  /// [runtimeVersion] The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
  SourceControlSlotGithubActionConfigurationCodeConfiguration({
    required this.runtimeStack,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': runtimeStack,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory SourceControlSlotGithubActionConfigurationCodeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceControlSlotGithubActionConfigurationCodeConfiguration(
      runtimeStack: pulumi.Input.fromValue(map['runtimeStack'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}
